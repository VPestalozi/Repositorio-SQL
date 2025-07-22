DROP DATABASE IF EXISTS aula_procedure;
CREATE DATABASE aula_procedure;
USE aula_procedure;

CREATE TABLE Aluno(
id int not null auto_increment primary key,
nome varchar(50),
idade int,
curso varchar(3),
email varchar(100)
);

CREATE TABLE IF NOT EXISTS conta(
	numero INT PRIMARY KEY,
    total FLOAT
);

#Questão 1
DELIMITER $$
DROP FUNCTION IF EXISTS cadastro;
CREATE FUNCTION cadastro(n varchar(50),c varchar(3)) RETURNS VARCHAR(100)
DETERMINISTIC
BEGIN
	RETURN concat(n,"@",c,"alunosinatel.br");
END $$
DELIMITER ;

DELIMITER $$
DROP PROCEDURE IF EXISTS inserir $$
CREATE PROCEDURE inserir(IN nome varchar(50),IN idade int ,IN curso varchar(3)) 
BEGIN
	INSERT INTO Aluno() VALUES (DEFAULT, nome, idade, curso, cadastro(nome,curso));
END $$
DELIMITER ;

CALL inserir('Rogerio',19,'GEC');

#Questão 2
CREATE TRIGGER resu BEFORE INSERT
ON conta
FOR EACH ROW SET @resu = NEW.total;
SELECT @resu;

INSERT INTO conta() VALUES (20,50);

CREATE TRIGGER resu2 AFTER INSERT
ON conta
FOR EACH ROW SET @resu2 = NEW.total;
SELECT @resu2;

#Questão 3:
/*CORREÇÂO DO CODIGO:
CREATE VIEW qtd AS(
	SELECT
		i.nome 'Item', e.qtd_disponivel 'Quantidade' ---- O "item" antes do .nome estava errado, pois ele não representa nenhuma tabela / a palavra "disponivel" foi digitada de maneira errada
	FROM
		estoque e,itens_solicitacao i
	WHERE ---- Não se usa IF mas sim WHERE. Porque o "if" representa uma condição 
		e.cod_item = i.cod_item ---- O "item" antes de ".cod_item" esta errado, pois ele não representa nenhuma tabela 
);

# a) Views não armazenam dados
# b) Sim, é possivel escolher nomes diferentes para as tabelas que estamos trabalhando
# c) Não, views trabalham com a união de tabelas 