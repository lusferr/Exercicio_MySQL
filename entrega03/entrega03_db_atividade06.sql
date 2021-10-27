create database dbCursoDaMinhaVida;
use dbCursoDaMinhaVida;

create table tbCategoria (
	idCategoria bigint auto_increment,
    nome varchar (60) not null,
    tipo varchar (60) not null,
    
    primary key (idCategoria)
);

create table tbCurso (
	idCurso bigint auto_increment,
    nome varchar (50) not null,
    preco decimal not null,
    horario varchar(50) not null,
    
    primary key (idCurso),
    fkCategoria bigint
);

insert into tbCategoria(nome, tipo)
	values ("Matématica", "Intensivo"),
           ("Português", "Reforço"),
           ("Inglês", "Intensivo"),
           ("Ciências", "regular");
           
 insert into tbCurso(nome, preco, horario, fkCategoria)
	values ("Mat para todos", 1000, "Noturno", 1),
           ("Ciência maluca", 500, "Matutino", 4),
           ("Inglishe", 800, "Tarde", 3),
           ("Fala comigo", 200, "Matutino", 2);
           
select * from tbCurso where preco > 500;
select * from tbCurso where preco between 50 and 900;
select * from tbCurso where nome like "%j%";

select * from tbCurso inner join tbCategoria
on tbCategoria.idCategoria = tbCurso.fkCategoria;