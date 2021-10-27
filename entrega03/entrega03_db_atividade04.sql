create database dbCidadeDasFrutas;
use dbCidadeDasFrutas;

create table tbProduto(
	idProduto bigint(2) auto_increment,
    nome varchar(50) not null,
    preco decimal not null,
    cor varchar(50) not null,
    peso decimal not null,
    fkCategoria bigint,
    
    primary key (idProduto),
    foreign key (fkCategoria) references tbCategoria (idCategoria)
);

create table tbCategoria(
	idCategoria bigint auto_increment,
    nome varchar(50) not null,
    promocao boolean not null,
    
    primary key (idCategoria)
);

select * from tbProduto;
select * from tbproduto;

insert into tbCategoria(nome, promocao)
	values ("Frescas", 1),
           ("Frescas", 0),
           ("Passadas", 1);

insert into tbProduto(nome, preco, cor, peso, fkCategoria)
	values ("Banana", 5.99, "amarela", 10, 1),
           ("Maça", 4.99, "vermelha", 10, 2),
           ("Pera", 3.99, "verde", 10, 3),
           ("Uva", 6.99, "roxa", 10, 2),
           ("Mamão", 8.99, "laranja", 10, 1);
           
select * from tbProduto where preco > 5;
select * from tbProduto where preco between 2 and 8;
select * from tbProduto where nome like "%C%";
select * from tbProduto inner join tbCategoria
on tbCategoria.idCategoria = tbProduto.fkCategoria;

select * from tbProduto where fkCategoria in (1,2);

