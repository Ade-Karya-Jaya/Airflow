-- ----------------------------
-- Schema for dapodik_emis
-- ----------------------------
CREATE SCHEMA IF NOT EXISTS dapodik_emis AUTHORIZATION postgres;

-- ----------------------------
-- Table structure 
-- ----------------------------
DROP TABLE IF EXISTS "dapodik_emis"."buku";
CREATE TABLE "dapodik_emis"."buku" (
  "id_buku" uuid NOT NULL,
  "semester_id" char(5) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "sekolah_id" uuid NOT NULL,
  "mata_pelajaran_id" int,
  "nama_mata_pelajaran" varchar(80) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "id_ruang" uuid,
  "nm_ruang" varchar(100) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "tingkat_pendidikan_id" numeric,
  "tingkat_pendidikan" varchar(20) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "id_hapus_buku" char(1) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "ket_hapus_buku" varchar(80) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "tgl_hapus_buku" date,
  "nm_buku" varchar(256) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "asal_data" char(1) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "id_biblio" uuid,
  "title" varchar(256) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "sor" varchar(200) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "edition" varchar(50) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "isbn_issn" varchar(32) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  -- "collation" varchar(50) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "publisher" varchar(100) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "publish_year" varchar(20) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "series_title" varchar(200) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "call_number" varchar(50) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "source" varchar(3) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "publish_place" varchar(200) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "notes" varchar(2000) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "image" varchar(100) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "file_att" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "opac_hide" numeric,
  "promoted" numeric,
  "labels" varchar(2000) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "paper_printing_spec" varchar(500) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "jumlah_layak" int,
  "jumlah_tidak_layak" int,
  "create_date" timestamp,
  "last_update" timestamp
)
;
ALTER TABLE "dapodik_emis"."buku" OWNER TO "postgres";

-- ----------------------------
-- Indexes structure 
-- ----------------------------

CREATE INDEX "buku_idx" ON "dapodik_emis"."buku" USING btree (
  "id_buku" "pg_catalog"."uuid_ops" ASC NULLS LAST
);

CREATE INDEX "buku_sekolah_idx" ON "dapodik_emis"."buku" USING btree (
  "sekolah_id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);

CREATE INDEX "buku_ruang_idx" ON "dapodik_emis"."buku" USING btree (
  "id_ruang" "pg_catalog"."uuid_ops" ASC NULLS LAST
);
