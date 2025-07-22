# INSET COMPLETO
INSERT INTO departamento VALUES ('TI',7,'2021-01-12',2);

#INSERT PARCIAL
INSERT INTO departamento (Dnome,Dnumero,SSN_Empregado) VALUES('Marketing',8,1);

#UPDATE SIMPLES
UPDATE departamento SET DataInicio = '2023-05-13' WHERE Dnumero=8;

#UPDATE AVANCADO
UPDATE departamento SET DataInicio = '2023-05-10';

#DELETE DE REGISTROS
DELETE FROM departamento WHERE Dnumero>=7;