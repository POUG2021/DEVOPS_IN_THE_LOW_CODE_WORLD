--liquibase formatted sql
--changeset rgrzegorczyk:emp_dept_fk  runOnChange:false failOnError:true
--rollback  ALTER TABLE employees DROP CONSTRAINT emp_dept_fk;
ALTER TABLE employees
ADD CONSTRAINT   emp_dept_fk
                     FOREIGN KEY (department_id)
                      REFERENCES departments;