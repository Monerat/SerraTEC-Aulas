--CREATE SCHEMA aula_revisao;
DROP TABLE IF EXISTS aula_revisao.professor CASCADE;
DROP TABLE IF EXISTS aula_revisao.aluno CASCADE;
DROP TABLE IF EXISTS aula_revisao.disciplina CASCADE;
DROP TABLE IF EXISTS aula_revisao.matricula CASCADE;
DROP TABLE IF EXISTS aula_revisao.professor_disciplina CASCADE;


create table aula_revisao.professor(
prof_numero serial NOT NULL,
prof_nome VARCHAR(30),
prof_rua VARCHAR(30),
prof_cidade VARCHAR(30),
PRIMARY KEY(prof_numero)
);

CREATE TABLE aula_revisao.aluno(
aluno_numero serial NOT NULL,
aluno_nome VARCHAR(30),
aluno_rua VARCHAR(30),
aluno_cidade VARCHAR(30),
PRIMARY KEY (aluno_numero)
);

CREATE TABLE aula_revisao.disciplina(
disc_codigo serial NOT NULL,
disc_nome VARCHAR(30),
curso_nome VARCHAR(30),
qtd_aulas integer,
PRIMARY KEY (disc_codigo)
);

CREATE TABLE aula_revisao.matricula(
aluno_numero INT REFERENCES aula_revisao.aluno(aluno_numero),
disc_codigo INT REFERENCES aula_revisao.disciplina(disc_codigo),
ano VARCHAR(4) NOT NULL,
PRIMARY KEY (aluno_numero, disc_codigo, ano)
);

CREATE TABLE aula_revisao.professor_disciplina(
disc_codigo integer REFERENCES aula_revisao.disciplina(disc_codigo),
prof_numero integer REFERENCES aula_revisao.professor(prof_numero),
ano VARCHAR(4),
PRIMARY KEY (disc_codigo, prof_numero, ano)
);

INSERT INTO aula_revisao.aluno
	(aluno_nome,aluno_rua, aluno_cidade)
VALUES	
	('Tiago Mateus Junior', '210', 'Palmas'),
	('Luciana Gomes', '202', 'Palmas'),
	('João Mateus', '2300', 'Gurupi'),
	('José Silva', '1024', 'Paraíso'),
	('Juraci', '106', 'Miranorte'),
	('Paulo', '101', 'Goianorte'),
	('Adriana Calcanhoto', 'rua Alvorada', 'Paraíso'),
	('Rosane', 'rua das flores', 'Guaraí'),
	('Mara', 'rua das águas', 'Porto Nacional'),
	('Julia', 'rua de madeira', 'Paraíso'),
	('Julia', 'rua de madeira', 'Palmas');

INSERT INTO aula_revisao.professor
	(prof_nome,prof_rua,prof_cidade)
VALUES
	('João José', '103', 'Palmas'),
	('Maria José', '201', 'Palmas'),
	('Bruno', '305', 'Paraiso'),
	('José Ricardo', '1106', 'Porto Nacional'),
	('Manuela', '120', 'Araguaína'),
	('Bruno', '1003', 'Porto Nacional'),
	('Luciana', ' 100', 'Miracema'),
	('Paulo', ' 150', 'Palmas'),
	('Lual', '1006', 'Paraíso'),
	('Antonio Marcos', '170', 'Araguaína');

INSERT INTO aula_revisao.disciplina
	(disc_nome,curso_nome,qtd_aulas)
VALUES
	('Química', 'Ensino Médio', 4),
	('Biologia', 'Ensino Médio', 4),
	('História', 'Ensino Médio', 2),
	('Religião', 'Ensino Médio', 2),
	('Português', 'Ensino Pós Médio', 4),
	('Física', 'Ensino Pós Médio', 6),
	('Matemática', 'Ensino Pós Médio', 4),
	('Geografia ', 'Ensino Pós Médio', 2),
	('Informática Aplicada', 'CST Sistemas para Internet', 4),
	('Banco de dados', 'CST Sistemas para Internet', 4),
	('Programação de Banco de dados', 'Computação', 4);

INSERT INTO aula_revisao.matricula
	(aluno_numero,disc_codigo,ano)
VALUES
	(1, 10, '2018'),
	(1, 4, '2018'),
	(1, 6, '2018'),
	(5, 3, '2018'),
	(6, 1, '2018'),
	(2, 6, '2018'),
	(7, 9, '2018'),
	(8, 10, '2018'),
	(9, 1, '2018'),
	(2, 2, '2018'),
	(11, 11, '2018');

INSERT INTO aula_revisao.professor_disciplina
	(disc_codigo,prof_numero,ano)
VALUES
	(1, 10, '2018'),
	(2, 5, '2018'),
	(3, 7, '2018'),
	(4, 4, '2018'),
	(5, 9, '2018'),
	(6, 2, '2018'),
	(7, 3, '2018'),
	(8, 9, '2018'),
	(9, 6, '2018'),
	(10, 3, '2018'),
	(11, 5, '2018');