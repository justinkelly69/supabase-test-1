

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;


CREATE SCHEMA IF NOT EXISTS "i18n";


ALTER SCHEMA "i18n" OWNER TO "postgres";


CREATE SCHEMA IF NOT EXISTS "iso";


ALTER SCHEMA "iso" OWNER TO "postgres";


CREATE EXTENSION IF NOT EXISTS "pg_net" WITH SCHEMA "extensions";






COMMENT ON SCHEMA "public" IS 'standard public schema';



CREATE SCHEMA IF NOT EXISTS "snaptrip_frontend";


ALTER SCHEMA "snaptrip_frontend" OWNER TO "postgres";


CREATE SCHEMA IF NOT EXISTS "world";


ALTER SCHEMA "world" OWNER TO "postgres";


CREATE EXTENSION IF NOT EXISTS "pg_graphql" WITH SCHEMA "graphql";






CREATE EXTENSION IF NOT EXISTS "pg_stat_statements" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "pgcrypto" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "supabase_vault" WITH SCHEMA "vault";






CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA "extensions";






CREATE TYPE "public"."color_source" AS ENUM (
    '99COLORS_NET',
    'ART_PAINTS_YG07S',
    'BYRNE',
    'CRAYOLA',
    'CMYK_COLOR_MODEL',
    'COLORCODE_IS',
    'COLORHEXA',
    'COLORXS',
    'CORNELL_UNIVERSITY',
    'COLUMBIA_UNIVERSITY',
    'DUKE_UNIVERSITY',
    'ENCYCOLORPEDIA_COM',
    'ETON_COLLEGE',
    'FANTETTI_AND_PETRACCHI',
    'FINDTHEDATA_COM',
    'FERRARIO_1919',
    'FEDERAL_STANDARD_595',
    'FLAG_OF_INDIA',
    'FLAG_OF_SOUTH_AFRICA',
    'GLAZEBROOK_AND_BALDRY',
    'GOOGLE',
    'HEXCOLOR_CO',
    'ISCC_NBS',
    'KELLY_MOORE',
    'MATTEL',
    'MAERZ_AND_PAUL',
    'MILK_PAINT',
    'MUNSELL_COLOR_WHEEL',
    'NATURAL_COLOR_SYSTEM',
    'PANTONE',
    'PLOCHERE',
    'POURPRE_COM',
    'RAL',
    'RESENE',
    'RGB_COLOR_MODEL',
    'THOM_POOLE',
    'UNIVERSITY_OF_ALABAMA',
    'UNIVERSITY_OF_CALIFORNIA_DAVIS',
    'UNIVERSITY_OF_CAMBRIDGE',
    'UNIVERSITY_OF_NORTH_CAROLINA',
    'UNIVERSITY_OF_TEXAS_AT_AUSTIN',
    'X11_WEB',
    'XONA_COM'
);


ALTER TYPE "public"."color_source" OWNER TO "postgres";


CREATE TYPE "public"."enabled_country" AS (
	"id" character(2),
	"checked" boolean
);


ALTER TYPE "public"."enabled_country" OWNER TO "postgres";


CREATE PROCEDURE "public"."update_selected_countries"(IN "enabled_countries" "jsonb")
    LANGUAGE "plpgsql"
    AS $$
DECLARE
    ec json;
BEGIN
    FOR ec IN SELECT jsonb_array_elements(enabled_countries) LOOP
        UPDATE world.countries SET "enabled" = (ec->>'checked')::BOOLEAN
        WHERE country = (ec->>'id')::CHAR(2);
    END LOOP;
    RETURN;
END;
$$;


ALTER PROCEDURE "public"."update_selected_countries"(IN "enabled_countries" "jsonb") OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."update_selected_countries1"("enabled_countries" "jsonb") RETURNS "void"
    LANGUAGE "plpgsql"
    AS $$DECLARE
    ec json;
BEGIN
    FOR ec IN SELECT jsonb_array_elements(enabled_countries) LOOP
        UPDATE world.countries SET "enabled" = (ec->>'checked')::BOOLEAN
        WHERE country = (ec->>'id')::CHAR(2);
    END LOOP;
    RETURN;
END;$$;


ALTER FUNCTION "public"."update_selected_countries1"("enabled_countries" "jsonb") OWNER TO "postgres";

SET default_tablespace = '';

SET default_table_access_method = "heap";


CREATE TABLE IF NOT EXISTS "i18n"."country_language_labels" (
    "id" integer NOT NULL,
    "country_language" integer NOT NULL,
    "label" character varying(100) NOT NULL,
    "text" "text"
);


ALTER TABLE "i18n"."country_language_labels" OWNER TO "postgres";


CREATE SEQUENCE IF NOT EXISTS "i18n"."country_language_labels_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "i18n"."country_language_labels_id_seq" OWNER TO "postgres";


ALTER SEQUENCE "i18n"."country_language_labels_id_seq" OWNED BY "i18n"."country_language_labels"."id";



CREATE TABLE IF NOT EXISTS "i18n"."labels" (
    "id" character varying(100) NOT NULL
);


ALTER TABLE "i18n"."labels" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "iso"."continents" (
    "id" character(2) NOT NULL,
    "name" character varying(20) NOT NULL
);


ALTER TABLE "iso"."continents" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "iso"."countries" (
    "id" character(2) NOT NULL,
    "continent" character(2) NOT NULL,
    "name" character varying(100) NOT NULL,
    "flag" character(2) NOT NULL,
    "tld" character(2) NOT NULL,
    "prefix" character varying(100) NOT NULL,
    "is_eu" boolean DEFAULT false NOT NULL,
    "enabled" boolean DEFAULT false NOT NULL
);


ALTER TABLE "iso"."countries" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "iso"."country_currencies" (
    "id" integer NOT NULL,
    "country" character(2),
    "currency" character(3),
    "enabled" boolean DEFAULT false NOT NULL
);


ALTER TABLE "iso"."country_currencies" OWNER TO "postgres";


CREATE SEQUENCE IF NOT EXISTS "iso"."country_currencies_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "iso"."country_currencies_id_seq" OWNER TO "postgres";


ALTER SEQUENCE "iso"."country_currencies_id_seq" OWNED BY "iso"."country_currencies"."id";



CREATE TABLE IF NOT EXISTS "iso"."country_languages" (
    "id" integer NOT NULL,
    "country" character(2) NOT NULL,
    "language" character(3) NOT NULL,
    "enabled" boolean DEFAULT false NOT NULL
);


ALTER TABLE "iso"."country_languages" OWNER TO "postgres";


CREATE SEQUENCE IF NOT EXISTS "iso"."country_languages_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "iso"."country_languages_id_seq" OWNER TO "postgres";


ALTER SEQUENCE "iso"."country_languages_id_seq" OWNED BY "iso"."country_languages"."id";



CREATE TABLE IF NOT EXISTS "iso"."currencies" (
    "id" character(3) NOT NULL,
    "name" character varying(100) NOT NULL
);


ALTER TABLE "iso"."currencies" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "iso"."languages" (
    "id" character(3) NOT NULL,
    "name" character varying(100),
    "enabled" boolean DEFAULT false NOT NULL
);


ALTER TABLE "iso"."languages" OWNER TO "postgres";


CREATE OR REPLACE VIEW "public"."country_details" AS
SELECT
    NULL::character(2) AS "id",
    NULL::character(2) AS "continent",
    NULL::character varying(100) AS "name",
    NULL::character(2) AS "flag",
    NULL::character(2) AS "tld",
    NULL::character varying(100) AS "prefix",
    NULL::boolean AS "is_eu",
    NULL::boolean AS "enabled",
    NULL::json AS "languages",
    NULL::json AS "currencies";


ALTER VIEW "public"."country_details" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "world"."countries" (
    "id" integer NOT NULL,
    "country" character(2) NOT NULL,
    "enabled" boolean DEFAULT false NOT NULL
);


ALTER TABLE "world"."countries" OWNER TO "postgres";


CREATE OR REPLACE VIEW "public"."country_list" AS
 SELECT "co"."id",
    "co"."continent",
    "co"."name",
    "co"."flag",
    "co"."is_eu",
    "wc"."enabled"
   FROM ("iso"."countries" "co"
     LEFT JOIN "world"."countries" "wc" ON (("wc"."country" = "co"."id")))
  ORDER BY "co"."name";


ALTER VIEW "public"."country_list" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."instruments" (
    "id" bigint NOT NULL,
    "name" "text" NOT NULL
);


ALTER TABLE "public"."instruments" OWNER TO "postgres";


ALTER TABLE "public"."instruments" ALTER COLUMN "id" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "public"."instruments_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);



CREATE SEQUENCE IF NOT EXISTS "world"."countries_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "world"."countries_id_seq" OWNER TO "postgres";


ALTER SEQUENCE "world"."countries_id_seq" OWNED BY "world"."countries"."id";



ALTER TABLE ONLY "i18n"."country_language_labels" ALTER COLUMN "id" SET DEFAULT "nextval"('"i18n"."country_language_labels_id_seq"'::"regclass");



ALTER TABLE ONLY "iso"."country_currencies" ALTER COLUMN "id" SET DEFAULT "nextval"('"iso"."country_currencies_id_seq"'::"regclass");



ALTER TABLE ONLY "iso"."country_languages" ALTER COLUMN "id" SET DEFAULT "nextval"('"iso"."country_languages_id_seq"'::"regclass");



ALTER TABLE ONLY "world"."countries" ALTER COLUMN "id" SET DEFAULT "nextval"('"world"."countries_id_seq"'::"regclass");



ALTER TABLE ONLY "i18n"."country_language_labels"
    ADD CONSTRAINT "country_language_labels_country_language_label_key" UNIQUE ("country_language", "label");



ALTER TABLE ONLY "i18n"."country_language_labels"
    ADD CONSTRAINT "country_language_labels_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "i18n"."labels"
    ADD CONSTRAINT "labels_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "iso"."continents"
    ADD CONSTRAINT "continents_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "iso"."countries"
    ADD CONSTRAINT "countries_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "iso"."country_currencies"
    ADD CONSTRAINT "country_currencies_country_currency_key" UNIQUE ("country", "currency");



ALTER TABLE ONLY "iso"."country_currencies"
    ADD CONSTRAINT "country_currencies_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "iso"."country_languages"
    ADD CONSTRAINT "country_languages_country_language_key" UNIQUE ("country", "language");



ALTER TABLE ONLY "iso"."country_languages"
    ADD CONSTRAINT "country_languages_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "iso"."currencies"
    ADD CONSTRAINT "currencies_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "iso"."languages"
    ADD CONSTRAINT "languages_name_key" UNIQUE ("name");



ALTER TABLE ONLY "iso"."languages"
    ADD CONSTRAINT "languages_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."instruments"
    ADD CONSTRAINT "instruments_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "world"."countries"
    ADD CONSTRAINT "countries_country_key" UNIQUE ("country");



ALTER TABLE ONLY "world"."countries"
    ADD CONSTRAINT "countries_pkey" PRIMARY KEY ("id");



CREATE OR REPLACE VIEW "public"."country_details" AS
 SELECT "co"."id",
    "co"."continent",
    "co"."name",
    "co"."flag",
    "co"."tld",
    "co"."prefix",
    "co"."is_eu",
    "wc"."enabled",
    "json_agg"("json_build_object"('id', "lg"."id", 'name', "lg"."name", 'enabled', "lg"."enabled")) AS "languages",
    "json_agg"("json_build_object"('id', "cu"."id", 'name', "cu"."name")) AS "currencies"
   FROM ((((("iso"."countries" "co"
     LEFT JOIN "iso"."country_languages" "cl" ON (("co"."id" = "cl"."country")))
     LEFT JOIN "iso"."languages" "lg" ON (("cl"."language" = "lg"."id")))
     LEFT JOIN "iso"."country_currencies" "cc" ON (("co"."id" = "cc"."country")))
     LEFT JOIN "iso"."currencies" "cu" ON (("cc"."currency" = "cu"."id")))
     LEFT JOIN "world"."countries" "wc" ON (("wc"."country" = "co"."id")))
  GROUP BY "co"."id", "co"."continent", "wc"."enabled"
  ORDER BY "co"."name";



ALTER TABLE ONLY "i18n"."country_language_labels"
    ADD CONSTRAINT "fk_country_language" FOREIGN KEY ("country_language") REFERENCES "iso"."country_languages"("id");



ALTER TABLE ONLY "i18n"."country_language_labels"
    ADD CONSTRAINT "fk_label" FOREIGN KEY ("label") REFERENCES "i18n"."labels"("id");



ALTER TABLE ONLY "iso"."countries"
    ADD CONSTRAINT "fk_continent" FOREIGN KEY ("continent") REFERENCES "iso"."continents"("id");



ALTER TABLE ONLY "iso"."country_languages"
    ADD CONSTRAINT "fk_country" FOREIGN KEY ("country") REFERENCES "iso"."countries"("id");



ALTER TABLE ONLY "iso"."country_currencies"
    ADD CONSTRAINT "fk_country" FOREIGN KEY ("country") REFERENCES "iso"."countries"("id");



ALTER TABLE ONLY "iso"."country_currencies"
    ADD CONSTRAINT "fk_currency" FOREIGN KEY ("currency") REFERENCES "iso"."currencies"("id");



ALTER TABLE ONLY "iso"."country_languages"
    ADD CONSTRAINT "fk_language" FOREIGN KEY ("language") REFERENCES "iso"."languages"("id");



ALTER TABLE ONLY "world"."countries"
    ADD CONSTRAINT "fk_countries" FOREIGN KEY ("country") REFERENCES "iso"."countries"("id");



CREATE POLICY "Enable read access for all users" ON "public"."instruments" FOR SELECT USING (true);



ALTER TABLE "public"."instruments" ENABLE ROW LEVEL SECURITY;




ALTER PUBLICATION "supabase_realtime" OWNER TO "postgres";





GRANT USAGE ON SCHEMA "public" TO "postgres";
GRANT USAGE ON SCHEMA "public" TO "anon";
GRANT USAGE ON SCHEMA "public" TO "authenticated";
GRANT USAGE ON SCHEMA "public" TO "service_role";



GRANT ALL ON SCHEMA "world" TO "authenticator";































































































































































GRANT ALL ON PROCEDURE "public"."update_selected_countries"(IN "enabled_countries" "jsonb") TO "anon";
GRANT ALL ON PROCEDURE "public"."update_selected_countries"(IN "enabled_countries" "jsonb") TO "authenticated";
GRANT ALL ON PROCEDURE "public"."update_selected_countries"(IN "enabled_countries" "jsonb") TO "service_role";



GRANT ALL ON FUNCTION "public"."update_selected_countries1"("enabled_countries" "jsonb") TO "anon";
GRANT ALL ON FUNCTION "public"."update_selected_countries1"("enabled_countries" "jsonb") TO "authenticated";
GRANT ALL ON FUNCTION "public"."update_selected_countries1"("enabled_countries" "jsonb") TO "service_role";


















GRANT ALL ON TABLE "public"."country_details" TO "anon";
GRANT ALL ON TABLE "public"."country_details" TO "authenticated";
GRANT ALL ON TABLE "public"."country_details" TO "service_role";



GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE "world"."countries" TO PUBLIC;



GRANT ALL ON TABLE "public"."country_list" TO "anon";
GRANT ALL ON TABLE "public"."country_list" TO "authenticated";
GRANT ALL ON TABLE "public"."country_list" TO "service_role";



GRANT ALL ON TABLE "public"."instruments" TO "anon";
GRANT ALL ON TABLE "public"."instruments" TO "authenticated";
GRANT ALL ON TABLE "public"."instruments" TO "service_role";
GRANT ALL ON TABLE "public"."instruments" TO "admin";
GRANT SELECT,INSERT,UPDATE ON TABLE "public"."instruments" TO "editor";
GRANT SELECT ON TABLE "public"."instruments" TO "viewer";



GRANT ALL ON SEQUENCE "public"."instruments_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."instruments_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."instruments_id_seq" TO "service_role";









ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES TO "service_role";






ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS TO "service_role";






ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES TO "service_role";






























RESET ALL;
