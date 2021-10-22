create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
	id_produto bigint auto_increment,
    nome varchar (230) not null,
    marca varchar (230) not null,
    preco real,
    
    primary key (id_produto)
);

select * from tb_produtos;

insert into tb_produtos(nome, marca, preco)
	values ("tênis", "nike", 299.99),
		   ("camiseta", "nike", 299.99),
           ("bone", "nike", 199.99),
           ("meia", "nike", 49.99),
           ("camisa", "nike", 199.99),
           ("blusa", "adidas", 499.99),
           ("jaqueta", "nike", 399.99),
           ("camisa", "adidas", 199.99),
		   ("tenis", "adidas", 299.99),
           ("chinelo", "havaianas", 69.99);
           
select * from tb_produtos where preco > 400;
select * from tb_produtos where preco < 400;

update tb_produtos set preco = 499.99 where id_produto = 7;

select * from tb_produtos where preco > 400;