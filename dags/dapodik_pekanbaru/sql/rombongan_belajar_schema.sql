-- ----------------------------
-- Schema for dapodik_pekanbaru
-- ----------------------------
CREATE SCHEMA IF NOT EXISTS dapodik_pekanbaru AUTHORIZATION postgres;

-- ----------------------------
-- Table structure 
-- ----------------------------
DROP TABLE IF EXISTS "dapodik_pekanbaru"."rombongan_belajar";
CREATE TABLE "dapodik_pekanbaru"."rombongan_belajar" (
  "rombongan_belajar_id" uuid,
  "sekolah_id" uuid NOT NULL,
  "id_ruang" uuid NOT NULL,
  "nama_ruang" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "tingkat_pendidikan_id" numeric,
  "tingkat_pendidikan" varchar(120) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  -- "jurusan_sp_id" uuid NOT NULL,
  "jurusan_id" varchar(120) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "jurusan" varchar(120) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "kurikulum_id" smallint,
  "kurikulum" varchar(200) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "nama" varchar(120) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  -- "ptk_id" uuid NOT NULL, -- seharusnya
  "ptk_id" uuid, --karena ada error
  "nama_ptk" varchar(120) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "moving_class" varchar(120) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "jenis_rombel" numeric,
  "jenis_rombel_keterangan" varchar(100) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "sks" numeric,
  "tanggal_mulai" DATE,
  "tanggal_selesai" DATE,
  "kebutuhan_khusus_id" integer,
  "kebutuhan_khusus" varchar(120) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "jumlah_pembelajaran" integer,
  "jumlah_anggota_rombel" integer,
  "create_date" timestamp,
  "last_update" timestamp
)
;
ALTER TABLE "dapodik_pekanbaru"."rombongan_belajar" OWNER TO "postgres";

-- ----------------------------
-- Indexes structure 
-- ----------------------------

CREATE INDEX "rombongan_belajar_idx" ON "dapodik_pekanbaru"."rombongan_belajar" USING btree (
  "rombongan_belajar_id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);

CREATE INDEX "rombongan_belajar_sekolah_idx" ON "dapodik_pekanbaru"."rombongan_belajar" USING btree (
  "sekolah_id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);

CREATE INDEX "rombongan_belajar_ruang_idx" ON "dapodik_pekanbaru"."rombongan_belajar" USING btree (
  "id_ruang" "pg_catalog"."uuid_ops" ASC NULLS LAST
);

