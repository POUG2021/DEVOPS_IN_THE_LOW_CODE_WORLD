--liquibase formatted sql
--changeset rgrzegorczyk:loc_c_id_fk runOnChange:false failOnError:true
--comment Locations to countries FK
--rollback  ALTER TABLE locations DROP CONSTRAINT loc_c_id_fk;
ALTER TABLE locations
ADD CONSTRAINT loc_c_id_fk
       		 FOREIGN KEY (country_id)
        	  REFERENCES countries(country_id);