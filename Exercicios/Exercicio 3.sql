create database if not exists exercicio3;
use exercicio3;

Create table if not exists tabela2(
	Matricula int not null auto_increment primary key,
    Nome varchar(45),
    CPF varchar(20),
    Cargo varchar(45),
    nProjetos varchar(3)
);

Insert into tabela2 (Nome, cpf, cargo,nprojetos) values("Junior", "000.000.000-00", "GP", '2');
Insert into tabela2 () values(default, "Maria", "111.111.111-11", "Desenvolvedor","3");
Insert into tabela2 () values(default, "Carlos", "222.222.222-22", "Tester","4");
Insert into tabela2 () values(default, "Julia", "333.333.333-33", "Desenvolvedor","5");
select nome,cpf,cargo,nprojetos from tabela2 where nprojetos>=4;
select max(nprojetos) from tabela2;
select min(nprojetos) from tabela2;
select avg(nprojetos) from tabela2 where not cargo='GP';
select distinct cargo from tabela2;
select Nome,CPF,nProjetos from tabela2 WHERE Cargo='Desenvolvedor';