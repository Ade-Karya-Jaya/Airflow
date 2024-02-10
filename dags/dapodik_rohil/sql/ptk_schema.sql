-- ----------------------------
-- Schema for dapodik_rohil
-- ----------------------------
CREATE SCHEMA IF NOT EXISTS dapodik_rohil AUTHORIZATION postgres;

-- ----------------------------
-- Table structure 
-- ----------------------------
DROP TABLE IF EXISTS "dapodik_rohil"."ptk";
CREATE TABLE "dapodik_rohil"."ptk" (
  "ptk_id" uuid,
  "sekolah_id" uuid NOT NULL,
  "nama" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "nip" varchar(50) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "jenis_kelamin" char(2) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "tempat_lahir" varchar(60) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "tanggal_lahir" DATE,
  "nik" varchar(30) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "no_kk" char(30) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "niy_nigk" varchar(40) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "nuptk" varchar(40) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "nuks" varchar(40) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "status_kepegawaian" varchar(40) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "jenis_ptk_id" numeric,
  "jenis_ptk" varchar(40) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "pengawas_bidang_studi" varchar(60) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "agama" varchar(40) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "kewarganegaraan" varchar(10) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "alamat_jalan" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "rt" numeric,
  "rw" numeric,
  "nama_dusun" varchar(60) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "desa_kelurahan" varchar(60) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "kode_kecamatan" char(10) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "kecamatan" varchar(60) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "kode_kabupaten" char(10) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "kabupaten" varchar(60) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "kode_provinsi" char(10) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "provinsi" varchar(60) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "kode_pos" char(10) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "lintang" numeric,
  "bujur" numeric,
  "no_telepon_rumah" varchar(40) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "no_hp" varchar(40) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "email" varchar(80) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "status_keaktifan" varchar(60) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "sk_cpns" varchar(100) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "tgl_cpns" DATE,
  "sk_pengangkatan" varchar(100) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "tmt_pengangkatan" DATE,
  "lembaga_pengangkat" varchar(100) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "pangkat_golongan" varchar(40) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "keahlian_laboratorium" varchar(60) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "sumber_gaji" varchar(60) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "nama_ibu_kandung" varchar(100) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "status_perkawinan" varchar(20) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "nama_suami_istri" varchar(100) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "nip_suami_istri" varchar(100) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "pekerjaan_suami_istri" integer,
  "tmt_pns" DATE,
  "sudah_lisensi_kepala_sekolah" varchar(10) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "jumlah_sekolah_binaan" integer,
  "pernah_diklat_kepengawasan" varchar(10) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "nm_wp" varchar(100) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "status_data" integer,
  "karpeg" varchar(20) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "karpas" varchar(20) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "mampu_handle_kk" varchar(10) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "keahlian_braille" varchar(10) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "keahlian_bhs_isyarat" varchar(10) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "npwp" varchar(20) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "bank" varchar(60) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "rekening_bank" varchar(40) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "rekening_atas_nama" varchar(70) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "tahun_ajaran" varchar(20) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "nomor_surat_tugas" varchar(100) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "tanggal_surat_tugas" DATE,
  "tmt_tugas" DATE,
  "ptk_induk" varchar(20) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "jenis_keluar" varchar(60) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "tgl_ptk_keluar" DATE,
  "riwayat_kepangkatan_pangkat_golongan" varchar(60) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "riwayat_kepangkatan_nomor_sk" varchar(100) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "riwayat_kepangkatan_tanggal_sk" DATE,
  "riwayat_kepangkatan_tmt_pangkat" DATE,
  "riwayat_kepangkatan_masa_kerja_gol_tahun" numeric,
  "riwayat_kepangkatan_masa_kerja_gol_bulan" numeric,
  "riwayat_gaji_berkala_pangkat_golongan" varchar(40) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "riwayat_gaji_berkala_nomor_sk" varchar(100) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "riwayat_gaji_berkala_tanggal_sk" DATE,
  "riwayat_gaji_berkala_tmt_kgb" DATE,
  "riwayat_gaji_berkala_masa_kerja_tahun" numeric,
  "riwayat_gaji_berkala_masa_kerja_bulan" numeric,
  "riwayat_gaji_berkala_gaji_pokok" numeric,
  "inpassing_pangkat_golongan" varchar(40) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "inpassing_no_sk_inpassing" varchar(100) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "inpassing_tgl_sk_inpassing" DATE,
  "inpassing_tmt_inpassing" DATE,
  "inpassing_angka_kredit" numeric,
  "inpassing_masa_kerja_tahun" numeric,
  "inpassing_masa_kerja_bulan" numeric,
  "riwayat_sertifikasi_bidang_studi" varchar(60) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "riwayat_sertifikasi_jenis_sertifikasi" varchar(80) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "riwayat_sertifikasi_tahun_sertifikasi" numeric,
  "riwayat_sertifikasi_nomor_sertifikat" varchar(100) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "riwayat_sertifikasi_nrg" varchar(30) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "riwayat_sertifikasi_nomor_peserta" varchar(100) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "riwayat_pendidikan_formal_bidang_studi" varchar(60) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "riwayat_pendidikan_formal_jenjang_pendidikan" varchar(60) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "riwayat_pendidikan_formal_gelar_akademik" varchar(60) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "riwayat_pendidikan_formal_satuan_pendidikan_formal" varchar(120) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "riwayat_pendidikan_formal_fakultas" varchar(60) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "riwayat_pendidikan_formal_kependidikan" varchar(10) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "riwayat_pendidikan_formal_tahun_masuk" numeric,
  "riwayat_pendidikan_formal_tahun_lulus" numeric,
  "riwayat_pendidikan_formal_nim" varchar(20) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "riwayat_pendidikan_formal_status_kuliah" varchar(10) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "riwayat_pendidikan_formal_semester" numeric,
  "riwayat_pendidikan_formal_ipk" numeric,
  "jumlah_anak" integer,
  "tugas_tambahan_jabatan_ptk" varchar(60) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "tugas_tambahan_sekolah" varchar(120) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "tugas_tambahan_jumlah_jam" numeric,
  "tugas_tambahan_nomor_sk" varchar(100) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "tugas_tambahan_tmt_tambahan" DATE,
  "tugas_tambahan_tst_tambahan" DATE,
  "riwayat_struktural_jabatan_ptk" varchar(60) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "riwayat_struktural_sk_struktural" varchar(100) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "riwayat_struktural_tmt_jabatan" DATE,
  "riwayat_fungsional_jabatan_fungsional" varchar(60) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "riwayat_fungsional_sk_jabfung" varchar(100) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "riwayat_fungsional_tmt_jabatan" DATE
)
;
ALTER TABLE "dapodik_rohil"."ptk" OWNER TO "postgres";

-- ----------------------------
-- Indexes structure 
-- ----------------------------

CREATE INDEX "ptk_idx" ON "dapodik_rohil"."ptk" USING btree (
  "ptk_id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);

CREATE INDEX "ptk_sekolah_idx" ON "dapodik_rohil"."ptk" USING btree (
  "sekolah_id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);

