drop database if exists aula;

create database aula;

use aula;

create table contato(
	id int primary key auto_increment,
	nome varchar(35) not null,
	email varchar(35) not null unique,
	telefone varchar(35)
);

desc contato;

insert into contato values (null, 'Crindomar',
	'cricri@gmail.com', '123123');
insert into contato values (null, 'Epaminondas',
	'ep@minondas.com', '234234');
insert into contato values (null, 'Diocesar',
	'dioc@gmail.com', '345345');

select * from contato;

insert into contato (nome, email, telefone) values
	('Rogeria', 'astolfo@pinto.com', '456456');

--bulk insert
insert into contato (nome, email, telefone) values
('Roberta Close', 'roberta@yahoo.com', '777888'),
('James T. Kirk', 'jim@enterprise.com', '774488'),
('Sr. Spock', 'spock@enterprise.com', '447788'),
('Leonard McCoy', 'magro@enterprise.com', '445599');

select * from contato;

select * from contato where id=5;

delete from contato where id = 5;

select * from contato;

update contato set nome='Cryndomar', 
	email='krikri@gmail.com', telefone='774411'
	where id=1;
	
select * from contato;

create view vwcontato as
select nome, email, telefone from contato
order by nome asc;

select * from vwcontato;
