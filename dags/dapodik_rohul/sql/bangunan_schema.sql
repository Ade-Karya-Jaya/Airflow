-- ----------------------------
-- Schema for dapodik_rohul
-- ----------------------------
CREATE SCHEMA IF NOT EXISTS dapodik_rohul AUTHORIZATION postgres;

-- ----------------------------
-- Table structure 
-- ----------------------------
DROP TABLE IF EXISTS "dapodik_rohul"."bangunan";
CREATE TABLE "dapodik_rohul"."bangunan" (
  "id_bangunan" uuid NOT NULL,
  "sekolah_id" uuid NOT NULL,
  "jenis_prasarana_id" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "jenis_prasarana" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "id_tanah" uuid,
  "nama_tanah" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "ptk_id" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "nama_ptk" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "id_hapus_buku" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "ket_hapus_buku" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "tgl_hapus_buku" date,
  "kepemilikan_sarpras_id" numeric,
  "kepemilikan_sarpras" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "kd_kl" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "kd_satker" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "kd_brg" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "nup" integer,
  "kode_eselon1" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "kode_sub_satker" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "nama_sub_satker" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "nama" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "panjang" float,
  "lebar" float,
  "nilai_perolehan_aset" numeric,
  "jml_lantai" numeric,
  "thn_dibangun" numeric,
  "luas_tapak_bangunan" numeric,
  "vol_pondasi_m3" numeric,
  "vol_sloop_kolom_balok_m3" numeric,
  "panj_kudakuda_m" numeric,
  "vol_kudakuda_m3" numeric,
  "panj_kaso_m" numeric,
  "panj_reng_m" numeric,
  "luas_tutup_atap_m2" numeric,
  "kd_satker_tanah" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "nm_satker_tanah" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "kd_brg_tanah" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "nm_brg_tanah" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "nup_brg_tanah" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "tgl_sk_pemakai" date,
  "ket_bangunan" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "asal_data" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "blockgrant_id" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "rusak_pondasi" numeric,
  "ket_pondasi" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "rusak_sloop_kolom_balok" numeric,
  "ket_sloop_kolom_balok" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "rusak_plester_struktur" numeric,
  "ket_plester_struktur" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "rusak_kudakuda_atap" numeric,
  "ket_kudakuda_atap" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "rusak_kaso_atap" numeric,
  "ket_kaso_atap" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "rusak_reng_atap" numeric,
  "ket_reng_atap" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "rusak_tutup_atap" numeric,
  "ket_tutup_atap" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "nilai_saat_ini" numeric

)
;
ALTER TABLE "dapodik_rohul"."bangunan" OWNER TO "postgres";

-- ----------------------------
-- Indexes structure 
-- ----------------------------

CREATE INDEX "bangunan_idx" ON "dapodik_rohul"."bangunan" USING btree (
  "id_bangunan" "pg_catalog"."uuid_ops" ASC NULLS LAST
);

CREATE INDEX "bangunan_sekolah_idx" ON "dapodik_rohul"."bangunan" USING btree (
  "sekolah_id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);

CREATE INDEX "bangunan_tanah_idx" ON "dapodik_rohul"."bangunan" USING btree (
  "id_tanah" "pg_catalog"."uuid_ops" ASC NULLS LAST
);


