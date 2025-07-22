create database if not exists exercicio2;
use exercicio2;

Create table if not exists tabela1(
	ID int not null auto_increment primary key,
    Nome varchar(45),
    Endereço varchar(50),
    Cargo varchar(45)
);

Insert into tabela1 (Nome, endereço, cargo) values("Vitor", "Rua 1", "Engenheiro");
Insert into tabela1 () values(default, "Teodoro", "Rua 2", "Projetista");
Update tabela1 set nome='Bruno' where id = '1';
select Nome, Endereço from tabela1;
Delete FROM tabela1 Where id = '3';