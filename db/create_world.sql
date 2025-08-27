DROP SCHEMA IF EXISTS world CASCADE;

CREATE SCHEMA IF NOT EXISTS world;

DROP TABLE IF EXISTS world.countries;

CREATE TABLE
    IF NOT EXISTS world.countries (
        "id" CHAR(2) NOT NULL PRIMARY KEY,
        "enabled" BOOLEAN NOT NULL DEFAULT FALSE
    );

INSERT INTO
    world.countries (id)
SELECT
    "id"
FROM
    iso.countries
ORDER BY
    "name";

DROP VIEW IF EXISTS world.country_list;

CREATE VIEW
    world.country_list AS
SELECT
    co."id",
    co."continent",
    co."name",
    co."flag",
    co."is_eu",
    co."enabled"
FROM
    iso.countries co
ORDER BY
    co."name";

DROP VIEW IF EXISTS world.country_details;

CREATE VIEW
    world.country_details AS
SELECT
    co."id",
    co."continent",
    co."name",
    co."flag",
    co."tld",
    co."prefix",
    co."is_eu",
    co."enabled",
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
GROUP BY
    co."id",
    co."continent"
ORDER BY
    co."name";