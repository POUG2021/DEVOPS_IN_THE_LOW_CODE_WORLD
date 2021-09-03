--liquibase formatted sql
--changeset rgrzegorczyk:emp_job_fk runOnChange:false failOnError:true
--rollback  ALTER TABLE employees DROP CONSTRAINT emp_job_fk;
ALTER TABLE employees
ADD CONSTRAINT   emp_job_fk
                     FOREIGN KEY (job_id)
                      REFERENCES jobs (job_id);