create database dbPizzariaLegal;
use dbPizzariaLegal;

create table tbPizza(
	idPizza bigint(2) auto_increment,
    nome varchar(50) not null,
    sabor varchar(50) not null,
	preco decimal(5, 2) not null,
    fkCategoria bigint,
    
    primary key (idPizza),
    foreign key (fkCategoria) references tbCategoria (idCategoria)
);

select * from tbPizza;

create table tbCategoria(
	idCategoria bigint(2) auto_increment,
    tipo varchar(50) not null,
    promocao boolean not null,
    
    primary key (idCategoria)
);

select * from tbCategoria;

insert into tbCategoria(tipo, promocao)
			values ("pequena", 0),
				   ("pequena", 1),
				   ("media", 0),
				   ("media", 1),
                   ("grande", 0),
				   ("grande", 1);

insert into tbPizza(nome, sabor, preco, fkCategoria)
			values ("Da casa", "marguerita com cheddar", 30, 2),
				   ("Larica", "Calabresa, frango, bancon, requeijão e cheddar", 60, 5),
                   ("Alone Netflix", "calabresa e queijo", 30, 1),
                   ("Brasileirissima", "feijoada", 45.89, 3);
                   
select * from tbPizza;

select * from tbPizza where preco > 45;

select * from tbPizza where tbPizza.preco between 29 and 60;

select * from tbPizza where nome like "%C%";

select * from tbPizza inner join tbCategoria
on tbCategoria.idCategoria = tbPizza.fkCategoria;
                   