create database geral;
use geral;

CREATE TABLE `usuario` (
  `id_usuario` int unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `email` varchar(60) NOT NULL,
  `senha` varchar(60) NOT NULL,
  `imagem` varchar(60) NOT NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `id_usuario_UNIQUE` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;


CREATE TABLE `tarefa` (
  `id_tarefa` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` tinytext NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'P',
  `usuario_id_usuario` int unsigned NOT NULL,
  PRIMARY KEY (`id_tarefa`),
  UNIQUE KEY `id_tarefa_UNIQUE` (`id_tarefa`),
  KEY `fk_tarefa_usuario_id_usuario_idx` (`usuario_id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=armscii8;

drop database geral;

insert into `usuario`( `nome`,`email`,`senha`)
values ('carlos', 'teste', 'batata');

insert into `tarefa` ( `title`,`description`,`status`)
values ('correr', 'caminhar rapido', true);
select * from tarefa;
