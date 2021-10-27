CREATE TABLE `Temas` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`descricao` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Posts` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`titulo` varchar(255) NOT NULL,
	`texto` varchar(255) NOT NULL,
	`data` DATETIME(255) NOT NULL,
	`tema_id` bigint(255) NOT NULL,
	`Usuario_id` bigint(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Usuário` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`nome` varchar(255) NOT NULL,
	`User` varchar(255) NOT NULL UNIQUE,
	`Senha` int(255) NOT NULL UNIQUE,
	PRIMARY KEY (`id`)
);

ALTER TABLE `Posts` ADD CONSTRAINT `Posts_fk0` FOREIGN KEY (`tema_id`) REFERENCES `Temas`(`id`);

ALTER TABLE `Posts` ADD CONSTRAINT `Posts_fk1` FOREIGN KEY (`Usuario_id`) REFERENCES `Usuário`(`id`);




