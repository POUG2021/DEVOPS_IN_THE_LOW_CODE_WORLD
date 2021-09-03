--liquibase formatted sql
--changeset rgrzegorczyk:jhist_job_fk runOnChange:false failOnError:true
--rollback  ALTER TABLE job_history DROP CONSTRAINT jhist_job_fk;
ALTER TABLE job_history
ADD  CONSTRAINT jhist_job_fk
                     FOREIGN KEY (job_id)
                     REFERENCES jobs;