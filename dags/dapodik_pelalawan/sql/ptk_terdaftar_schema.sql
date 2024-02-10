-- ----------------------------
-- Schema for dapodik_pelalawan
-- ----------------------------
CREATE SCHEMA IF NOT EXISTS dapodik_pelalawan AUTHORIZATION postgres;

-- ----------------------------
-- Table structure 
-- ----------------------------
DROP TABLE IF EXISTS "dapodik_pelalawan"."ptk_terdaftar";
CREATE TABLE "dapodik_pelalawan"."ptk_terdaftar" (
  "ptk_terdaftar_id" uuid NOT NULL,
  "sekolah_id" uuid NOT NULL,
  "ptk_id" uuid NOT NULL,
  "nomor_surat_tugas" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "tanggal_surat_tugas" date,
  "tmt_tugas" date,
  "ptk_induk" numeric,
  "aktif_bulan_01" numeric,
  "aktif_bulan_02" numeric,
  "aktif_bulan_03" numeric,
  "aktif_bulan_04" numeric,
  "aktif_bulan_05" numeric,
  "aktif_bulan_06" numeric,
  "aktif_bulan_07" numeric,
  "aktif_bulan_08" numeric,
  "aktif_bulan_09" numeric,
  "aktif_bulan_10" numeric,
  "aktif_bulan_11" numeric,
  "aktif_bulan_12" numeric,
  "jenis_keluar_id" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "jenis_keluar" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "tgl_ptk_keluar" date
)
;
ALTER TABLE "dapodik_pelalawan"."ptk_terdaftar" OWNER TO "postgres";

-- ----------------------------
-- Indexes structure 
-- ----------------------------

CREATE INDEX "ptk_terdaftar_idx" ON "dapodik_pelalawan"."ptk_terdaftar" USING btree (
  "ptk_terdaftar_id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);

CREATE INDEX "ptk_terdaftar_sekolah_idx" ON "dapodik_pelalawan"."ptk_terdaftar" USING btree (
  "sekolah_id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);

CREATE INDEX "ptk_terdaftar_ptk_idx" ON "dapodik_pelalawan"."ptk_terdaftar" USING btree (
  "ptk_id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);

