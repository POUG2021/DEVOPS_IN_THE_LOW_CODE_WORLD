--liquibase formatted sql
--changeset rgrzegorczyk:jhist_emp_fk runOnChange:false failOnError:true
--rollback  ALTER TABLE job_history DROP CONSTRAINT jhist_emp_fk;
ALTER TABLE job_history
ADD  CONSTRAINT jhist_emp_fk
                     FOREIGN KEY (employee_id)
                     REFERENCES employees;