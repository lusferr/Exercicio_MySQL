create database dbFarmaciaDoBem;
use dbFarmaciaDoBem;

create table tbProduto(
	idProduto bigint(2) auto_increment,
    nome varchar(50) not null,
    embalagem varchar(50) not null,
    preco decimal not null,
    tipo varchar(50) not null,
    
    fkCategoria bigint,
    
    primary key (idProduto),
    foreign key (fkCategoria) references tbCategoria (idCategoria)
);

create table tbCategoria(
	idCategoria bigint(2) auto_increment,
    tarja varchar (50) not null,
    uso varchar(50) not null,
    
    primary key (idCategoria)
);

select * from tbCategoria;

select * from tbProduto;

insert into tbCategoria(tarja, uso)
	values ("preta", "adulto"),
           ("amarela", "adulto"),
           ("preta", "infantil"),
           ("amarela", "infantil"),
           ("vermelha", "adulto"),
           ("vermelha", "infantil");
           
insert into tbProduto(nome, embalagem, preco, tipo, fkCategoria)
	values ("Paracetamol", "caixa", 19.99, "gel", 2), 
           ("Pantoprazol", "caixa", 19.99, "comprimido", 2), 
           ("Digesbride", "caixa", 39.99, "comprimido", 2), 
           ("Dorflex", "cartela", 29.99, "gel", 2), 
           ("Dramin", "cartela", 16.99, "líquido", 2), 
           ("Luftal", "frasco", 49.99, "líquido", 2); 
           
select * from tbProduto where preco > 30;
select * from tbProduto where preco between 3 and 60;
select * from tbProduto where nome like "%B%";
select * from tbProduto inner join tbCategoria
on tbCategoria.idCategoria = tbProduto.fkCategoria;

select * from tbProduto where fkCategoria = 2;
           
           
