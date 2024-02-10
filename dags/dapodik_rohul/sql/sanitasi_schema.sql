-- ----------------------------
-- Schema for dapodik_rohul
-- ----------------------------
CREATE SCHEMA IF NOT EXISTS dapodik_rohul AUTHORIZATION postgres;

-- ----------------------------
-- Table structure 
-- ----------------------------
DROP TABLE IF EXISTS "dapodik_rohul"."sanitasi";
CREATE TABLE "dapodik_rohul"."sanitasi" (
  "sekolah_id" uuid NOT NULL,
  "semester_id" char(5) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "sumber_air_id" varchar(25) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "sumber_air" varchar(25) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "sumber_air_minum_id" numeric(5),
  "sumber_air_minum" varchar(25) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "ketersediaan_air" numeric(5),
  "kecukupan_air" numeric(5),
  "kecukupan_air_keterangan" varchar(100) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "minum_siswa" numeric(5),
  "memproses_air" numeric(5),
  "siswa_bawa_air" numeric(5),
  "toilet_siswa_laki" numeric(5),
  "toilet_siswa_perempuan" numeric(5),
  "toilet_siswa_kk" numeric(5),
  "toilet_siswa_kecil" numeric(5),
  "jml_jamban_l_g" numeric(5),
  "jml_jamban_l_tg" numeric(5),
  "jml_jamban_p_g" numeric(5),
  "jml_jamban_p_tg" numeric(5),
  "jml_jamban_lp_g" numeric(5),
  "jml_jamban_lp_tg" numeric(5),
  "tempat_cuci_tangan" numeric(5),
  "tempat_cuci_tangan_rusak" numeric(5),
  "a_sabun_air_mengalir" numeric(5),
  "jamban_difabel" numeric(5),
  "tipe_jamban" char(1) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "tipe_jamban_keterangan" varchar(100) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "a_sedia_pembalut" numeric(5),
  "a_sedia_pembalut_keterangan" varchar(100) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "kegiatan_cuci_tangan" numeric(5),
  "pembuangan_air_limbah" numeric(5),
  "pembuangan_air_limbah_keterangan" varchar(100) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "a_kuras_septitank" numeric(5),
  "a_memiliki_solokan" numeric(5),
  "a_tempat_sampah_kelas" numeric(5),
  "a_tempat_sampah_tutup_p" numeric(5),
  "a_cermin_jamban_p" numeric(5),
  "a_memiliki_tps" numeric(5),
  "a_tps_angkut_rutin" numeric(5),
  "a_anggaran_sanitasi" numeric(5),
  "a_melibatkan_sanitasi_siswa" numeric(5),
  "a_kemitraan_san_daerah" numeric(5),
  "a_kemitraan_san_puskesmas" numeric(5),
  "a_kemitraan_san_swasta" numeric(5),
  "a_kemitraan_san_non_pem" numeric(5),
  "kie_guru_cuci_tangan" numeric(5),
  "kie_guru_haid" numeric(5),
  "kie_guru_perawatan_toilet" numeric(5),
  "kie_guru_keamanan_pangan" numeric(5),
  "kie_guru_minum_air" numeric(5),
  "kie_kelas_cuci_tangan" numeric(5),
  "kie_kelas_haid" numeric(5),
  "kie_kelas_perawatan_toilet" numeric(5),
  "kie_kelas_keamanan_pangan" numeric(5),
  "kie_kelas_minum_air" numeric(5),
  "kie_toilet_cuci_tangan" numeric(5),
  "kie_toilet_haid" numeric(5),
  "kie_toilet_perawatan_toilet" numeric(5),
  "kie_toilet_keamanan_pangan" numeric(5),
  "kie_toilet_minum_air" numeric(5),
  "kie_selasar_cuci_tangan" numeric(5),
  "kie_selasar_haid" numeric(5),
  "kie_selasar_perawatan_toilet" numeric(5),
  "kie_selasar_keamanan_pangan" numeric(5),
  "kie_selasar_minum_air" numeric(5),
  "kie_uks_cuci_tangan" numeric(5),
  "kie_uks_haid" numeric(5),
  "kie_uks_perawatan_toilet" numeric(5),
  "kie_uks_keamanan_pangan" numeric(5),
  "kie_uks_minum_air" numeric(5),
  "kie_kantin_cuci_tangan" numeric(5),
  "kie_kantin_haid" numeric(5),
  "kie_kantin_perawatan_toilet" numeric(5),
  "kie_kantin_keamanan_pangan" numeric(5),
  "kie_kantin_minum_air" numeric(5),
  "create_date" timestamp,
  "last_update" timestamp
)
;
ALTER TABLE "dapodik_rohul"."sanitasi" OWNER TO "postgres";

-- ----------------------------
-- Indexes structure 
-- ----------------------------

CREATE INDEX "sanitasi_sekolah_idx" ON "dapodik_rohul"."sanitasi" USING btree (
  "sekolah_id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);
