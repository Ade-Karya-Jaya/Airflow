-- ----------------------------
-- Schema for dapodik_bengkalis
-- ----------------------------
CREATE SCHEMA IF NOT EXISTS dapodik_bengkalis AUTHORIZATION postgres;

-- ----------------------------
-- Table structure 
-- ----------------------------
DROP TABLE IF EXISTS "dapodik_bengkalis"."alat";
CREATE TABLE "dapodik_bengkalis"."alat" (
  "id_ruang" uuid,
  "nama" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "id_alat" uuid NOT NULL,
  "semester_id" char(5),
  "sekolah_id"uuid NOT NULL,
  "jenis_sarana_id" int,
  "jenis_sarana" varchar(60) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "ptk_id" uuid,
  "nama_ruang" varchar(100) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "nama_ptk" varchar(100) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "id_hapus_buku" char(1) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "ket_hapus_buku" varchar(80) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "tgl_hapus_buku" date,
  "kepemilikan_sarpras_id" numeric(5),
  "kepemilikan_sarpras" varchar(20) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "kd_kl" char(3) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "kd_satker" varchar(20) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "kd_brg" varchar(10) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "nup" int,
  "kode_eselon1" varchar(2) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "nama_eselon1" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "kode_sub_satker" varchar(3) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "nama_sub_satker" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "spesifikasi" varchar(300) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "asal_data" char(1) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "blockgrant_id" uuid,
  "jumlah_layak" int,
  "jumlah_tidak_layak" int,
  "create_date" timestamp,
  "last_update" timestamp
)
;
ALTER TABLE "dapodik_bengkalis"."alat" OWNER TO "postgres";

-- ----------------------------
-- Indexes structure 
-- ----------------------------

CREATE INDEX "alat_idx" ON "dapodik_bengkalis"."alat" USING btree (
  "id_alat" "pg_catalog"."uuid_ops" ASC NULLS LAST
);

CREATE INDEX "alat_sekolah_idx" ON "dapodik_bengkalis"."alat" USING btree (
  "sekolah_id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);

CREATE INDEX "alat_ruang_idx" ON "dapodik_bengkalis"."alat" USING btree (
  "id_ruang" "pg_catalog"."uuid_ops" ASC NULLS LAST
);
