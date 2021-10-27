create database dt_generation_game_online;
use dt_generation_game_online;

create table tb_classe(
	id_classe bigint auto_increment,
    voa boolean not null,
    raca varchar(230) not null,
    habilidade varchar(230) not null,
    
    primary key (id_classe)
);

create table tb_personagem(
	nome varchar(230) not null,
    sexo varchar(230),
    inteligencia int not null,
    forca int not null,
    localidade varchar(230) not null,
    fk_personagem int,
    
	foreign key fk_personagem on id_classe
    
);