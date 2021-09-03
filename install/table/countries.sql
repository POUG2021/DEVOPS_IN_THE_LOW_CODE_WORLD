--liquibase formatted sql
--changeset rgrzegorczyk:create_COUNTRIES_table runOnChange:false failOnError:true
--comment Create the COUNTRIES table to hold country information for customers and company locations. LOCATIONS have a foreign key to this table.
--rollback  DROP TABLE countries CASCADE CONSTRAINTS;
CREATE TABLE countries 
    ( country_id      CHAR(2) 
       CONSTRAINT  country_id_nn NOT NULL 
    , country_name    VARCHAR2(40) 
    , region_id       NUMBER 
    , CONSTRAINT     country_c_id_pk 
        	     PRIMARY KEY (country_id) 
    );
COMMENT ON TABLE countries
IS 'country table. Contains 25 rows. References with locations table.';

COMMENT ON COLUMN countries.country_id
IS 'Primary key of countries table.';

COMMENT ON COLUMN countries.country_name
IS 'Country name';

COMMENT ON COLUMN countries.region_id
IS 'Region ID for the country. Foreign key to region_id column in the departments table.';    