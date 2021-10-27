create database dbConstruindoNossaVida;
use dbConstruindoNossaVida;

create table tbCategoria (
	idCategoria bigint auto_increment,
    nome varchar (60) not null,
    tipo varchar (60) not null,
    
    primary key (idCategoria)
);

create table tbProduto (
	idProduto bigint auto_increment,
    nome varchar (50) not null,
    preco decimal not null,
    cor varchar (50) not null,
    
    primary key (idProduto),
    fkCategoria bigint
);

insert into tbCategoria(nome, tipo)
	values ("Casa", "Moradia"),
           ("Churrasqueira", "Lazer"),
           ("Piscina", "Lazer"),
           ("Roupa", "Vestimenta"),
           ("Carro", "locomoção");
 insert into tbProduto(nome, preco, cor, fkCategoria)
	values ("Casa", 100000, "Branca", 1),
           ("Grelha", 150, "prata", 2),
           ("Piscina", 10000, "azul", 3),
           ("Casa", 100000, "Branca", 1),
           ("Onix", 70000, "Branco", 5);
           
select * from tbProduto where preco > 5000;
select * from tbProduto where preco between 5000 and 90000;
select * from tbProduto where nome like "%c%";

select * from tbProduto inner join tbCategoria
on tbCategoria.idCategoria = tbProduto.fkCategoria;