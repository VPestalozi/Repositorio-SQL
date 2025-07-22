create database if not exists prova2;
use prova2;

Create table if not exists prova4(
	id int not null auto_increment primary key,
	nome varchar(10),
    idade varchar(2),
    curso varchar(3),
    país varchar(15),
    período varchar(2),
    NumTel varchar(12)
);

Insert into prova4 (nome,idade,curso,país,período,NumTel) values ("Vitor","19","GEC","Brasil","5","35912345670");
Insert into prova4 (nome,idade,curso,país,período,NumTel) values ("Geraldo","23","GES","USA","7","35912000000");
Insert into prova4 (nome,idade,curso,país,período,NumTel) values ("Roberto","21","GEA","Russia","1","35912344544");
Insert into prova4 (nome,idade,curso,país,período,NumTel) values ("Rodrigo","29","GEP","Polonia","3","35912985643");
Insert into prova4 (nome,idade,curso,país,período,NumTel) values ("Claudio","30","GEE","França","2","35996453728");
select * from prova4;
UPDATE prova4 SET nome = "Oscar" Where nome = "Geraldo";
select nome,país from prova4; -- Questão 2
delete from prova4 where id = '1'; -- a) Não. A chave primaria e uma ferramenta que facilita a vinculação de informações em tabelas separadas, sendo assim um facilitador na hora de encontrar os dados na tabela
delete from prova4 where id ='4'; -- b) Não, os operadores lógicos "and" e "not" servem como "e" e "negação",respectivamente. Porque o operador "and" não representa uma operação lógica "ou", sendo esta representada pelo operador "or".
select * from prova4 where período>=3 && período<=10; -- c)Sim. O limite e aplicado no final do codigo de pesquisa, sendo ele aplicado pelo "limit" no codigo. Exemplo: select * from prova4 limit 2; 
update prova4 set curso ="GES" where curso = "GEC"; 

