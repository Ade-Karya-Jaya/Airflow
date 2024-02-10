-- ----------------------------
-- Schema for dapodik_pelalawan
-- ----------------------------
CREATE SCHEMA IF NOT EXISTS dapodik_pelalawan AUTHORIZATION postgres;

-- ----------------------------
-- Table structure 
-- ----------------------------
DROP TABLE IF EXISTS "dapodik_pelalawan"."angkutan";
CREATE TABLE "dapodik_pelalawan"."angkutan" (
  "sekolah_id" uuid NOT NULL,
  "semester_id" varchar COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "id_angkutan"uuid NOT NULL,
  "ptk_id" uuid,
  "nama_ptk" varchar(100) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "jenis_sarana_id" int,
  "nama_sarana" varchar(60) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "id_hapus_buku" varchar COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "ket_hapus_buku" varchar COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "tgl_hapus_buku" date,
  "kepemilikan_sarpras_id" decimal,
  "kepemilikan_sarpras" varchar(20) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "kd_kl" varchar COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "kd_satker" varchar(20) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "kd_brg" varchar COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "nup" int,
  "kode_eselon1" varchar COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "nama_eselon1" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "kode_sub_satker" varchar COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "nama" varchar(100) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "spesifikasi" varchar(300) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "merk" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "no_polisi" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "no_bpkb" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "alamat" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "asal_data" varchar COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "blockgrant_id"uuid,
  "create_date" timestamp,
  "last_update" timestamp
)
;
ALTER TABLE "dapodik_pelalawan"."angkutan" OWNER TO "postgres";

-- ----------------------------
-- Indexes structure 
-- ----------------------------

CREATE INDEX "angkutan_idx" ON "dapodik_pelalawan"."angkutan" USING btree (
  "id_angkutan" "pg_catalog"."uuid_ops" ASC NULLS LAST
);

CREATE INDEX "angkutan_sekolah_idx" ON "dapodik_pelalawan"."angkutan" USING btree (
  "sekolah_id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);

CREATE INDEX "angkutan_ptk_idx" ON "dapodik_pelalawan"."angkutan" USING btree (
  "ptk_id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);
