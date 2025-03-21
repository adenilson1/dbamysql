01-BANCO DE DADOS

01.1-COMANDO DELETAR BANCO DE DADOS

DROP DATABASE NOME_DO_BANCO

01.2-COMANDO CRIANDO UM BANCO DE DADOS -> LIVRARIA

CREATE DATABASE LIVRARIA;

01.3-COMANDO MOSTRAR BANCOS DE DADOS NO TERMINAL

SHOW DATABASES;

+--------------------+
| Database           |
+--------------------+
| LIVRARIA           |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+

01.4-COMANDO USAR BANCO DE DADOS 

USE NOME_DO_BANCO

02-CRIANDO TABELAS 

USE LIVRARIA;

CREATE TABLE AUTOR(
IDAUTOR INT NOT NULL AUTO_INCREMENT,
NOMEAUTOR VARCHAR(50),
SOBRENOME VARCHAR(50),
CONSTRAINT PK_AUTOR PRIMARY KEY (IDAUTOR)
);

02.1-MOSTRAR TABELA

DESC NOME_TABELA
EXPLAIN NOME_TABELA

DESC AUTOR;
EXPLAIN AUTOR;

+-----------+-------------+------+-----+---------+----------------+
| Field     | Type        | Null | Key | Default | Extra          |
+-----------+-------------+------+-----+---------+----------------+
| IDAUTOR   | int         | NO   | PRI | NULL    | auto_increment |
| NOMEAUTOR | varchar(50) | YES  |     | NULL    |                |
| SOBRENOME | varchar(50) | YES  |     | NULL    |                |
+-----------+-------------+------+-----+---------+----------------+


03.CRIAND UMA NOVA TABELA - DROP TABELA

CREATE TABLE EDITORA(
IDEDITORA INT NOT NULL AUTO_INCREMENT,
NOMEEDITORA VARCHAR(50),
CONSTRAINT PK_EDITORA PRIMARY KEY (IDEDITORA)
);

DESC EDITORA;
+-------------+-------------+------+-----+---------+----------------+
| Field       | Type        | Null | Key | Default | Extra          |
+-------------+-------------+------+-----+---------+----------------+
| IDEDITORA   | int         | NO   | PRI | NULL    | auto_increment |
| NOMEEDITORA | varchar(50) | YES  |     | NULL    |                |
+-------------+-------------+------+-----+---------+----------------+


03.1-PAGAR TABELA 
DROP TABLE EDITORA;


04.CRIANDO TABELA LIVRO, FK E VERIFICANDO O MODELO DE DADOS (MER)

CREATE TABLE LIVRO(
IDLIVRO INT NOT NULL AUTO_INCREMENT,
NOMELIVRO VARCHAR(45) NOT NULL,
ID_AUTOR INT NOT NULL,
ID_EDITORA INT NOT NULL,
CONSTRAINT PK_LIVRO PRIMARY KEY (IDLIVRO),
CONSTRAINT FK_LIVRO_AUTOR FOREIGN KEY (ID_AUTOR)
REFERENCES AUTOR (IDAUTOR), 
CONSTRAINT FK_LIVRO_EDITORA FOREIGN KEY (ID_EDITORA)
REFERENCES EDITORA (IDEDITORA)

);

DESC LIVRO;

+------------+-------------+------+-----+---------+----------------+
| Field      | Type        | Null | Key | Default | Extra          |
+------------+-------------+------+-----+---------+----------------+
| IDLIVRO    | int         | NO   | PRI | NULL    | auto_increment |
| NOMELIVRO  | varchar(45) | NO   |     | NULL    |                |
| ID_AUTOR   | int         | NO   | MUL | NULL    |                |
| ID_EDITORA | int         | NO   | MUL | NULL    |                |
+------------+-------------+------+-----+---------+----------------+