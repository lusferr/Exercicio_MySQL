create database db_servico_rh;

use db_servico_rh;

create table tb_funcionarios(
	id_func bigint auto_increment,
    nome varchar(230) not null,
    email varchar(230) not null,
    cargo enum("Professor", "Coordenador", "Diretor"),
    salario real,
    
    primary key (id_func)
);

select * from db_servico_rh.tb_funcionarios;

insert into tb_funcionarios(nome, email, cargo, salario)
	values ("Luis", "email", "Diretor", 19000.00),
		   ("Pedro", "email", "Professor", 4000.00),
           ("Carlos", "email", "Professor", 19000.00),
           ("Beatriz", "email", "Coordenador", 4000.00),
           ("Ana", "email", "Coordenador", 9000.00),
           ("Julia", "email", "Professor", 4000.00);
           
select * from tb_funcionarios where salario > 2000;            
select * from tb_funcionarios where salario < 2000; 

update tb_funcionarios set email = "pedro@email.com" where id_func = 15;

select * from db_servico_rh.tb_funcionarios;



