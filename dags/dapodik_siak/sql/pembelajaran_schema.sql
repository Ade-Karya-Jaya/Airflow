-- ----------------------------
-- Schema for dapodik_siak
-- ----------------------------
CREATE SCHEMA IF NOT EXISTS dapodik_siak AUTHORIZATION postgres;

-- ----------------------------
-- Table structure 
-- ----------------------------
DROP TABLE IF EXISTS "dapodik_siak"."pembelajaran";
CREATE TABLE "dapodik_siak"."pembelajaran" (
  "pembelajaran_id" uuid,
  "semester_id" char(5),
  "sekolah_id" uuid NOT NULL,
  "rombongan_belajar_id" uuid NOT NULL,
  "mata_pelajaran_id" int,
  "nama_mata_pelajaran" varchar(80),
  "ptk_terdaftar_id" uuid NOT NULL,
  "ptk_id" uuid,
  "nama_ptk" varchar(100),
  "sk_mengajar" varchar,
  "tanggal_sk_mengajar" varchar,
  "jam_mengajar_per_minggu" int,
  "status_di_kurikulum" int,
  "ket_stat_di_kurikulum" varchar,
  "nama_mata_pelajaran_lokal" varchar,
  "induk_pembelajaran_id" varchar,
  "create_date" timestamp,
  "last_update" timestamp,
  "soft_delete" varchar       
)
;
ALTER TABLE "dapodik_siak"."pembelajaran" OWNER TO "postgres";

-- ----------------------------
-- Indexes structure 
-- ----------------------------

CREATE INDEX "pembelajaran_idx" ON "dapodik_siak"."pembelajaran" USING btree (
  "pembelajaran_id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);

CREATE INDEX "pembelajaran_sekolah_idx" ON "dapodik_siak"."pembelajaran" USING btree (
  "sekolah_id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);

CREATE INDEX "rombongan_belajar_id_idx" ON "dapodik_siak"."pembelajaran" USING btree (
  "rombongan_belajar_id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);

