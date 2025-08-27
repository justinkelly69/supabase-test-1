DROP SCHEMA IF EXISTS i18n CASCADE;

CREATE SCHEMA IF NOT EXISTS i18n;

-- labels
CREATE TABLE
    IF NOT EXISTS i18n.labels ("id" VARCHAR(100) NOT NULL PRIMARY KEY);

-- country_language_labels
CREATE TABLE
    IF NOT EXISTS i18n.country_language_labels (
        "id" SERIAL PRIMARY KEY,
        "country_language" INTEGER NOT NULL,
        "label" VARCHAR(100) NOT NULL,
        "text" TEXT,
        CONSTRAINT "fk_country_language" FOREIGN KEY ("country_language") REFERENCES iso.country_languages ("id"),
        CONSTRAINT "fk_label" FOREIGN KEY ("label") REFERENCES i18n.labels ("id"),
        UNIQUE ("country_language", "label")
    );