DROP DATABASE IF EXISTS aula_procedure;
CREATE DATABASE aula_procedure;
USE aula_procedure;

CREATE TABLE Aluno(
id int not null auto_increment primary key,
nome varchar(50),
idade int,
curso VARCHAR (3),
email varchar(100)
);

#CRIANDO A FUNCTION
DELIMITER $$
DROP FUNCTION IF EXISTS email $$
CREATE FUNCTION email(a VARCHAR(20), b VARCHAR(3)) RETURNS VARCHAR(50)
DETERMINISTIC
BEGIN
	RETURN concat(a,"@",b,".inatel.br");
END $$
DELIMITER ;
  
DELIMITER $$
DROP PROCEDURE IF EXISTS inserirAlunos $$
CREATE PROCEDURE inserirAlunos(IN nome VARCHAR(45), IN idade INT, IN curso VARCHAR(3)) 
BEGIN
  INSERT INTO Aluno() VALUES (DEFAULT, nome, idade, curso, email(nome,curso));
END $$
DELIMITER ;

CALL inserirAlunos('Pedro', 21, 'gec'); 
SELECT * FROM ALUNO;