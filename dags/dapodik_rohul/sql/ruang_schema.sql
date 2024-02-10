-- ----------------------------
-- Schema for dapodik_rohul
-- ----------------------------
CREATE SCHEMA IF NOT EXISTS dapodik_rohul AUTHORIZATION postgres;

-- ----------------------------
-- Table structure 
-- ----------------------------
DROP TABLE IF EXISTS "dapodik_rohul"."ruang";
CREATE TABLE "dapodik_rohul"."ruang" (
  "id_ruang" uuid NOT NULL,
  "semester_id" char(5) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "sekolah_id" uuid NOT NULL,
  "id_tanah" uuid,
  "id_bangunan" uuid NOT NULL,
  "jenis_prasarana_id" int,
  "jenis_prasarana" varchar(60) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "nama_tanah" varchar(100) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "nama_bangunan" varchar(100) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "kd_ruang" varchar(10) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "nm_ruang" varchar(100) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "lantai" numeric,
  "panjang" float(8),
  "lebar" float(8),
  "reg_pras" varchar(16) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "kapasitas" numeric,
  "luas_ruang" float(8),
  "luas_plester_m2" numeric,
  "luas_plafon_m2" numeric,
  "luas_dinding_m2" numeric,
  "luas_daun_jendela_m2" numeric,
  "luas_daun_pintu_m2" numeric,
  "panj_kusen_m" numeric,
  "luas_tutup_lantai_m2" numeric,
  "panj_inst_listrik_m" numeric,
  "jml_inst_listrik" numeric,
  "panj_inst_air_m" numeric,
  "jml_inst_air" numeric,
  "panj_drainase_m" numeric,
  "luas_finish_struktur_m2" numeric,
  "luas_finish_plafon_m2" numeric,
  "luas_finish_dinding_m2" numeric,
  "luas_finish_kpj_m2" numeric,
  "rusak_lisplang_talang" numeric,
  "ket_lisplang_talang" varchar(120) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "rusak_rangka_plafon" numeric,
  "ket_rangka_plafon" varchar(120) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "rusak_tutup_plafon" numeric,
  "ket_tutup_plafon" varchar(120) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "rusak_bata_dinding" numeric,
  "ket_bata_dinding" varchar(120) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "rusak_plester_dinding" numeric,
  "ket_plester_dinding" varchar(120) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "rusak_daun_jendela" numeric,
  "ket_daun_jendela" varchar(120) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "rusak_daun_pintu" numeric,
  "ket_daun_pintu" varchar(120) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "rusak_kusen" numeric,
  "ket_kusen" varchar(120) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "rusak_tutup_lantai" numeric,
  "ket_penutup_lantai" varchar(120) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "rusak_inst_listrik" numeric,
  "ket_inst_listrik" varchar(120) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "rusak_inst_air" numeric,
  "ket_inst_air" varchar(120) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "rusak_drainase" numeric,
  "ket_drainase" varchar(120) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "rusak_finish_struktur" numeric,
  "ket_finish_struktur" varchar(120) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "rusak_finish_plafon" numeric,
  "ket_finish_plafon" varchar(120) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "rusak_finish_dinding" numeric,
  "ket_finish_dinding" varchar(120) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "rusak_finish_kpj" numeric,
  "ket_finish_kpj" varchar(120) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "berfungsi" char(5) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "blob_id" uuid,
  "bobot_kerusakan" float(8),
  "kondisi" varchar(50) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "create_date" timestamp(100),
  "last_update" timestamp(100)
)
;
ALTER TABLE "dapodik_rohul"."ruang" OWNER TO "postgres";

-- ----------------------------
-- Indexes structure 
-- ----------------------------

CREATE INDEX "ruang_idx" ON "dapodik_rohul"."ruang" USING btree (
  "id_ruang" "pg_catalog"."uuid_ops" ASC NULLS LAST
);

CREATE INDEX "ruang_sekolah_idx" ON "dapodik_rohul"."ruang" USING btree (
  "sekolah_id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);

CREATE INDEX "ruang_tanah_idx" ON "dapodik_rohul"."ruang" USING btree (
  "id_tanah" "pg_catalog"."uuid_ops" ASC NULLS LAST
);

CREATE INDEX "ruang_bangunan_idx" ON "dapodik_rohul"."ruang" USING btree (
  "id_bangunan" "pg_catalog"."uuid_ops" ASC NULLS LAST
);


