--liquibase formatted sql
--changeset rgrzegorczyk:emp_manager_fk runOnChange:false failOnError:true
--rollback  ALTER TABLE employees DROP CONSTRAINT emp_manager_fk;
ALTER TABLE employees
ADD CONSTRAINT     emp_manager_fk     
                     FOREIGN KEY (manager_id)
                      REFERENCES employees;