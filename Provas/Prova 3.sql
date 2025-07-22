#CEP PARA CLIENTE
#PRECO E PARA OS PRODUTOS
#DELETAR A TAXA DE ENTREGA DE COMPRA

DROP DATABASE IF EXISTS artesanato;
CREATE DATABASE artesanato;
USE artesanato;
CREATE TABLE IF NOT EXISTS Cliente(
cpf VARCHAR(14) NOT NULL PRIMARY KEY,
nome VARCHAR(45) NOT NULL,
telefone VARCHAR(45) NOT NULL
#cep VARCHAR(9)
);
CREATE TABLE IF NOT EXISTS Produto(
codigo INT NOT NULL PRIMARY KEY,
nome VARCHAR(45) NOT NULL,
tipo_madeira VARCHAR(45) NOT NULL,
preco FLOAT NOT NULL,
qtd_estoque INT NOT NULL
);
CREATE TABLE IF NOT EXISTS Compra(
Cliente_cpf VARCHAR(14) NOT NULL,
Produto_codigo INT NOT NULL,
data_compra DATE NOT NULL,
qtd_comprada INT NOT NULL,
PRIMARY KEY (Cliente_cpf, Produto_codigo),
CONSTRAINT Cliente_cpf_fk
FOREIGN KEY (Cliente_cpf) REFERENCES Cliente(cpf) ON DELETE NO ACTION
ON UPDATE CASCADE,
CONSTRAINT Produto_codigo_fk
FOREIGN KEY (Produto_codigo) REFERENCES Produto(codigo) ON DELETE NO ACTION
 ON UPDATE CASCADE
);

INSERT INTO Cliente VALUE ('492.441.760-25','Luciano','(35)99875-5572');
INSERT INTO Cliente VALUE ('456.841.862-03','Flavio','(35)3473-8562');
INSERT INTO Cliente VALUE ('192.041.526-14','Paola','(35)3471-1519');
INSERT INTO Cliente VALUE ('556.851.862-88','Aline','(11)99822-9639');

INSERT INTO Produto (codigo,nome,tipo_madeira,preco,qtd_estoque) VALUE ('0300','Baleia Azul','Carvalho','29.90','3');
INSERT INTO Produto () VALUE ('0301','Moinho de vento','Ipê','24.90','2');
INSERT INTO Produto () VALUE ('0400','Conjunto de banquinhos','Carvalho','42.00','4');
INSERT INTO Produto () VALUE ('0500','Porta Chaves','Goiabão','8.90','7');
INSERT INTO Produto () VALUE ('0501','Mini Avião','Mogno','27.90','4');
INSERT INTO Produto () VALUE ('0502','Tronco Esculpido','Goiabão','69.90','2');
INSERT INTO Produto () VALUE ('0503','Vaso de Flores',' Aroeira','9.90','4');
INSERT INTO Produto () VALUE ('0504','Urso Pardo','Aroeira','28.90','2');
INSERT INTO Produto () VALUE ('0505','Galinha pintada','Carvalho','11.90','4');
INSERT INTO Produto () VALUE ('0800','Flauta','Mogno','18.90','2');
INSERT INTO Produto () VALUE ('0802','Tábua de corte','Carvalho','8.90','4');
INSERT INTO Produto () VALUE ('0900','Guitarra','Alder','1000','5');

INSERT INTO Compra (Cliente_cpf,Produto_codigo,data_compra,qtd_comprada) VALUE ('492.441.760-25','0301','2018-08-20','1');
INSERT INTO Compra (Cliente_cpf,Produto_codigo,data_compra,qtd_comprada) VALUE ('556.851.862-88','0503','2020-11-12','2');
INSERT INTO Compra (Cliente_cpf,Produto_codigo,data_compra,qtd_comprada) VALUE ('456.841.862-03','0802','2020-10-30','1');

SELECT C.nome,P.nome,CO.data_compra,CO.qtd_comprada FROM Cliente AS C JOIN Produto AS P JOIN Compra AS CO ON CO.Cliente_cpf = C.cpf
AND CO.Produto_codigo = P.codigo;

CREATE USER 'Rodrigo' identified by '11111';
GRANT ALL PRIVILEGES ON artesanato.* TO 'Rodrigo';
CREATE USER 'Secretaria' identified by 'senha2';
GRANT SELECT,UPDATE,DELETE,INSERT ON artesanato.* TO 'Secretaria';
REVOKE UPDATE ON artesanato.* FROM 'Secretaria';
DROP USER 'Secretaria'; 