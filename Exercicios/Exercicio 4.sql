create database if not exists exercicio4;
use exercicio4;

Create table if not exists tabela5(
	Nome varchar(45),
    Matricula varchar(10),
    Endereço varchar(20),
    Ano_nasc varchar(4),
    curso varchar(3)
);

Insert into tabela5(nome,matricula,endereço,ano_nasc,curso) values('Janaina','123','Rua 1','1998','GEB');
Insert into tabela5(nome,matricula,endereço,ano_nasc,curso) values('Pedro','124','Rua 2','2000','GES');
Insert into tabela5(nome,matricula,endereço,ano_nasc,curso) values('Jander','125','Rua 3','1999','GEC');
Insert into tabela5(nome,matricula,endereço,ano_nasc,curso) values('Lucca','123','Rua 4','1998','GEB');
Insert into tabela5(nome,matricula,endereço,ano_nasc) values('Laura','456','Rua 5','1998');

select nome,matricula,curso from tabela5 where nome like 'Jan____';
select nome,curso from tabela5 where nome like 'L%a';
select distinct ano_nasc,curso from tabela5;
select nome,ano_nasc,curso from tabela5 where ano_nasc<=1998;
select *from tabela5 limit 3;
Update tabela5 set endereço = 'Rua 9' where curso='GEB';
delete from tabela5 where curso='GEB';
select*from tabela5;