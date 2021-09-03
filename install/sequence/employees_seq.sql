--liquibase formatted sql
--changeset rgrzegorczyk:create_employees_seq runOnChange:false failOnError:true
--rollback  DROP SEQUENCE employees_seq;
CREATE SEQUENCE employees_seq
 START WITH     207
 INCREMENT BY   1
 NOCACHE
 NOCYCLE;
