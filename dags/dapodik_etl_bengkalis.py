# Example DAG demonstrating how to ingest data from API source,
# transform it, and storing data to DBMS --in this case we use 
# PostgreSQL for example--.
# 
# Writer : Ade Karya
# 
# Dibuat untuk tujuan pembelajaran, untuk kebutuhan lebih spesifik 
# silakan dikembangkan sesuai studi kasus

import requests
import json
import logging

from datetime import datetime 
from airflow import DAG
from airflow.models import Variable

# Operators
from airflow.operators.bash import BashOperator
from airflow.operators.python import PythonOperator, BranchPythonOperator

# Operators untuk postgre
from airflow.providers.postgres.operators.postgres import PostgresOperator
from airflow.hooks.postgres_hook import PostgresHook

# konteks data yang di proses
endpoints = [
    'ptk',
    'peserta-didik',
    'ptk-terdaftar',
    'rombongan-belajar',
    'pembelajaran',
    'tanah',
    'bangunan',
    'ruang',
    'sanitasi',
    'angkutan',
    'buku',
    'alat'
]

default_args = {
    'owner': 'airflow'
}

dag = DAG(
    dag_id='dapodik_bengkalis_etl',
    default_args=default_args,
    start_date=datetime(2024, 2, 9),
    end_date=datetime(2024, 6, 30),  # Menghentikan DAG pada tanggal 30 Juni 2024
    schedule_interval='0 23 * * 2',  # Menjalankan otomatis setiap rabu jam 6 pagi (GMT+7)
    catchup=False,
    tags=['dapodik'],
) 

# Tasks
def auth(ti):
    url = Variable.get('API_URL') + '/token'
    payload = {
        'username': Variable.get('API_USERNAME'),
        'password': Variable.get('API_PASSWORD'),	
    }

    headers = {'X-API-Key': Variable.get('API_KEY')}

    # result = requests.post(url, data=payload, headers=headers)
    result = requests.post(url, data=payload, headers=headers, verify=True)
    if result.status_code==200 :
        response = result.json()
        ti.xcom_push(key='token', value=response['access_token'])
        return response['access_token']
    else:
        return False

def ingest_kecamatan(ti):
    url = Variable.get('API_URL') + '/' + 'wilayah_akses_kecamatan'
    key = ti.xcom_pull(key='token', task_ids='authentification')
    headers = {'Authorization': 'Bearer '+ key, 'X-API-Key': Variable.get('API_KEY')}
    logging.info('Ingest data kecamatan')
    # result = requests.get(url, headers=headers)
    result = requests.get(url, headers=headers, verify=True)
    if result.status_code==200 :
        response = result.json()
        ti.xcom_push(key='kode_kecamatan', value=[item['kode_kecamatan'] for item in response])
        return response
    else:
        logging.info(result)
        return False

def ingest_sekolah(kode_kecamatan, ti):
    url = Variable.get('API_URL') + '/' + 'sekolah'
    key = ti.xcom_pull(key='token', task_ids='authentification')
    
    headers = {'Authorization': 'Bearer '+ key, 'X-API-Key': Variable.get('API_KEY')}

    logging.info('Ingest data sekolah')
         
    result = requests.get(url, headers=headers, params={'kode_kecamatan': kode_kecamatan.strip()}, verify=True)
    if result.status_code==200 :
        response = result.json()
        return response
    else:
        logging.info(result.json())
        return False

def etl_sekolah(ti):
    kecamatan = ti.xcom_pull(key='kode_kecamatan', task_ids='kecamatan')
    table_name = 'sekolah'
    table_schema = 'dapodik_bengkalis'
    dest = PostgresHook(postgres_conn_id='local-postgresql')

    rows = dest.get_records("SELECT column_name FROM INFORMATION_SCHEMA.COLUMNS WHERE table_schema='"+table_schema+"' AND table_name='"+table_name+"' ORDER BY ordinal_position; ")
    columns = [row[0] for row in rows]

    ret_sekolah = True
    for kode_kecamatan in kecamatan:   
        record = ingest_sekolah(kode_kecamatan=kode_kecamatan, ti=ti)
       
        if record == False:
            ret_sekolah = False
            break
        new_records = []
        for item in record:
            data = [item[column] for column in columns]
            new_records.append(data)

        dest.insert_rows(table=table_schema + '.' + table_name, rows=new_records, target_fields=columns)

    return ret_sekolah



def ingest(endpoint, npsn, ti):
    url = Variable.get('API_URL')+'/'+endpoint
    key = ti.xcom_pull(key='token', task_ids='authentification')
    headers = {'Authorization': 'Bearer '+ key, 'X-API-Key': Variable.get('API_KEY')}
    parameters = {
        'npsn': npsn,
    }

    logging.info('Ingest data '+endpoint+' '+str(npsn)+'#')
    result = requests.get(url, headers=headers, params=parameters, verify=True)
    if result.status_code==200 :
        response = result.json()
        return response
    else:
        logging.info(result.json())
        return False

def etl(endpoint, ti):
    table_name = endpoint.replace('-', '_')
    table_schema = 'dapodik_bengkalis'
    dest = PostgresHook(postgres_conn_id='local-postgresql')
    sekolah = PostgresHook(postgres_conn_id='local-postgresql')
    rows_npsn = sekolah.get_records("SELECT npsn FROM dapodik_bengkalis.sekolah WHERE bentuk_pendidikan IN ('SD', 'SMP', 'KB', 'TK', 'TPA', 'SKB', 'PKBM', 'SPS', 'Kursus') AND kabupaten IN ('Kab. Bengkalis')")
   

    # column name listing
    rows = dest.get_records("SELECT column_name FROM INFORMATION_SCHEMA.COLUMNS WHERE table_schema='"+table_schema+"' AND table_name='"+table_name+"' ORDER BY ordinal_position; ")
    columns = [row[0] for row in rows]

    ret = True
    for npsn in rows_npsn:
        record = ingest(endpoint, npsn, ti)
        if record == False:
            ret = False
            break
        
        new_records = []        
        for item in record:
            data = [item[column] for column in columns]
            new_records.append(data)

        # write data
        dest.insert_rows(table=table_schema+'.'+table_name, rows=new_records, target_fields=columns)
       
    return ret

def create_pipeline(token_, endpoint, dag_, audit_):
    table_name = endpoint.replace('-', '_')

    create_table = PostgresOperator(
        task_id='create_table_'+table_name,
        postgres_conn_id='local-postgresql',
        sql='dapodik_bengkalis/sql/'+table_name+'_schema.sql',
        dag=dag_
    )

    ETL = PythonOperator(
        task_id='etl_'+endpoint,
        python_callable=etl,
        op_kwargs={'endpoint':endpoint},
        dag=dag_
    )

    sekolah >> create_table >> ETL 

token = PythonOperator(
    task_id='authentification',
    python_callable=auth,
)

kecamatan = PythonOperator(
    task_id = 'kecamatan',
    python_callable=ingest_kecamatan,
    dag=dag
)

create_table_sekolah = PostgresOperator(
    task_id='create_table_sekolah',
    postgres_conn_id='local-postgresql',
    sql='dapodik_bengkalis/sql/sekolah_schema.sql',
    dag=dag
)

sekolah = PythonOperator(
    task_id = 'sekolah',
    python_callable=etl_sekolah,
    dag=dag
)

audit = BashOperator(
    task_id='audit',
    bash_command='echo "do task audit."'
)


token >> kecamatan >> create_table_sekolah >> sekolah 

# Pipeline
for endpoint in endpoints:
    create_pipeline(token, endpoint, dag, audit)

