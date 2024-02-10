-- ----------------------------
-- Schema for dapodik_kuansing
-- ----------------------------
CREATE SCHEMA IF NOT EXISTS dapodik_kuansing AUTHORIZATION postgres;

-- ----------------------------
-- Table structure 
-- ----------------------------
DROP TABLE IF EXISTS "dapodik_kuansing"."sekolah";
CREATE TABLE "dapodik_kuansing"."sekolah" (
  "sekolah_id" uuid,
  "semester_id" char(5) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "nama" varchar(100) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "nama_nomenklatur" varchar(100) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "nss" char(12) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "npsn" char(8) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "bentuk_pendidikan_id" smallint,
  "bentuk_pendidikan" varchar(50) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "alamat_jalan" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "rt" numeric,
  "rw" numeric,
  "nama_dusun" varchar(60) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "kode_wilayah" char(8) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "kode_desa_kelurahan" char(8) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "desa_kelurahan" varchar(60) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "kode_kecamatan" char(8) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "kecamatan" varchar(60) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "kode_kabupaten" char(8) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "kabupaten" varchar(60) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "kode_provinsi" char(8) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "provinsi" varchar(60) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "kode_pos" char(5) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "lintang" numeric,
  "bujur" numeric,
  "nomor_telepon" varchar(20) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "nomor_fax" varchar(20) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "email" varchar(60) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "website" varchar(256) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "kebutuhan_khusus_id" int,
  "kebutuhan_khusus" varchar(40) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "status_sekolah_id" char(1) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "status_sekolah" varchar(50) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "sk_pendirian_sekolah" varchar(80) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "tanggal_sk_pendirian"date,
  "status_kepemilikan_id" varchar(5) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "status_kepemilikan" varchar(50) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "yayasan_id" uuid,
  "yayasan" varchar(100) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "sk_izin_operasional" varchar(80) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "tanggal_sk_izin_operasional" date,
  "no_rekening" varchar(20) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "nama_bank" varchar(50) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "cabang_kcp_unit" varchar(60) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "rekening_atas_nama" varchar(50) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "mbs" numeric,
  "luas_tanah_milik" numeric,
  "luas_tanah_bukan_milik" numeric,
  "kode_registrasi" varchar, -- bigint tipe data sebenarnya
  "npwp" char(50) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "nm_wp" varchar(200) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "keaktifan" varchar(5) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "flag" char(3) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "daya_listrik" numeric,
  "kontinuitas_listrik" varchar(5) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "jarak_listrik" numeric,
  "wilayah_terpencil" varchar(5) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "wilayah_perbatasan" varchar(5) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "wilayah_transmigrasi" varchar(5) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "wilayah_adat_terpencil" varchar(5) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "wilayah_bencana_alam" varchar(5) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "wilayah_bencana_sosial" varchar(5) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "partisipasi_bos" varchar(5) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "waktu_penyelenggaraan_id" numeric,
  "waktu_penyelenggaraan" varchar(50) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "sumber_listrik_id" varchar(5) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "sumber_listrik" varchar(50) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "sertifikasi_iso_id" smallint,
  "sertifikasi_iso" varchar(50) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "akses_internet_id" smallint,
  "akses_internet" varchar(50) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "akses_internet_2_id" smallint,
  "akses_internet_2" varchar(50) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "akreditasi" varchar(30) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "create_date" timestamp,
  "last_update" timestamp
)
;
ALTER TABLE "dapodik_kuansing"."sekolah" OWNER TO "postgres";

-- ----------------------------
-- Indexes structure 
-- ----------------------------

CREATE UNIQUE INDEX "sekolah_pk" ON "dapodik_kuansing"."sekolah" USING btree (
  "sekolah_id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure 
-- ----------------------------
ALTER TABLE "dapodik_kuansing"."sekolah" ADD CONSTRAINT "pk_sekolah" PRIMARY KEY ("sekolah_id");