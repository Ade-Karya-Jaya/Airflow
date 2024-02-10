-- ----------------------------
-- Schema for dapodik_meranti
-- ----------------------------
CREATE SCHEMA IF NOT EXISTS dapodik_meranti AUTHORIZATION postgres;

-- ----------------------------
-- Table structure 
-- ----------------------------
DROP TABLE IF EXISTS "dapodik_meranti"."tanah";
CREATE TABLE "dapodik_meranti"."tanah" (
  "id_tanah" uuid NOT NULL,
  "sekolah_id" uuid NOT NULL,
  "jenis_prasarana_id" integer,
  "jenis_prasarana" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "id_hapus_buku" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "ket_hapus_buku" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "tgl_mutasi_keluar" date,
  "kepemilikan_sarpras_id" numeric,
  "kepemilikan_sarpras" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "kd_kl" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "kd_satker" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "kd_brg" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "nup" integer,
  "kode_eselon1" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "nama_eselon1" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "kode_sub_satker" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "nama_sub_satker" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "nama" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "panjang" float,
  "lebar" float,
  "nilai_perolehan_aset" numeric,
  "batas" varchar(255),
  "ket_tanah" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "luas" numeric,
  "luas_lahan_tersedia" numeric,
  "no_sertifikat_tanah" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "asal_data" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "blockgrant_id" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  -- "NJOP" numeric,
  "create_date" timestamp,
  "last_update" timestamp,
  "soft_delete_blockgrant" varchar,
  "soft_delete_longitudinal" varchar

)
;
ALTER TABLE "dapodik_meranti"."tanah" OWNER TO "postgres";

-- ----------------------------
-- Indexes structure 
-- ----------------------------

CREATE INDEX "tanah_idx" ON "dapodik_meranti"."tanah" USING btree (
  "id_tanah" "pg_catalog"."uuid_ops" ASC NULLS LAST
);

CREATE INDEX "tanah_sekolah_idx" ON "dapodik_meranti"."tanah" USING btree (
  "sekolah_id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);



