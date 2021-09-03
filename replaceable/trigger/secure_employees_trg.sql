--liquibase formatted sql
--changeset rgrzegorczyk:secure_employees_trg runOnChange:true stripComments:false
--rollback DROP TRIGGER secure_employees_trg;
CREATE OR REPLACE TRIGGER secure_employees_trg
  BEFORE INSERT OR UPDATE OR DELETE ON employees
BEGIN
  p_secure_dml;
END secure_employees_trg;
/