DROP SCHEMA IF EXISTS world CASCADE;

CREATE SCHEMA IF NOT EXISTS world;

DROP TABLE IF EXISTS world.countries;

CREATE TABLE
    IF NOT EXISTS world.countries (
        "id" SERIAL PRIMARY KEY,
        "country" CHAR(2) NOT NULL UNIQUE,
        "enabled" BOOLEAN NOT NULL DEFAULT FALSE,
        CONSTRAINT "fk_countries" FOREIGN KEY ("country") REFERENCES iso.countries ("id")
    );

INSERT INTO
    world.countries (country)
SELECT
    "id"
FROM
    iso.countries
ORDER BY
    "name";

GRANT SELECT, INSERT, UPDATE, DELETE ON world.countries TO public;

DROP VIEW IF EXISTS public.country_list;

CREATE VIEW
    public.country_list AS
SELECT
    co."id",
    co."continent",
    co."name",
    co."flag",
    co."is_eu",
    wc."enabled"
FROM
    iso.countries co
    LEFT JOIN world.countries wc ON wc."country" = co."id"
ORDER BY
    co."name";

DROP VIEW IF EXISTS public.country_details;

CREATE VIEW
    public.country_details AS
SELECT
    co."id",
    co."continent",
    co."name",
    co."flag",
    co."tld",
    co."prefix",
    co."is_eu",
    wc."enabled",
    JSON_AGG (
        json_build_object (
            'id',
            lg."id",
            'name',
            lg."name",
            'enabled',
            lg."enabled"
        )
    ) AS languages,
    JSON_AGG (
        json_build_object ('id', cu."id", 'name', cu."name")
    ) AS currencies
FROM
    iso.countries co
    LEFT JOIN iso.country_languages cl ON co."id" = cl."country"
    LEFT JOIN iso.languages lg ON cl."language" = lg."id"
    LEFT JOIN iso.country_currencies cc ON co."id" = cc."country"
    LEFT JOIN iso.currencies cu ON cc."currency" = cu."id"
    LEFT JOIN world.countries wc ON wc."country" = co."id"
GROUP BY
    co."id",
    co."continent",
    wc."enabled"
ORDER BY
    co."name";

DROP FUNCTION update_selected_countries;

DROP TYPE ENABLED_COUNTRY;
CREATE TYPE ENABLED_COUNTRY AS (id CHAR(2), checked BOOLEAN);

CREATE OR REPLACE PROCEDURE update_selected_countries(enabled_countries jsonb)
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
$$
LANGUAGE plpgsql;

/* CREATE FUNCTION update_data(p_json jsonb)
RETURNS void AS $$
DECLARE
  json_item json;
BEGIN
  FOR json_item IN SELECT jsonb_array_elements(p_json) LOOP
    UPDATE data_table SET data_text_column = (json_item->>'data_text')::text
      WHERE data_int_column = (json_item->>'data_int')::integer;
  END LOOP;
END;
$$ LANGUAGE SQL IMMUTABLE; */