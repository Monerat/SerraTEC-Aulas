--1Crie uma consulta com todas as disciplinas oferecidas no ano de 2018, constando os nomes das disciplinas, nomes e cidades dos professores responsáveis e nomes dos cursos das disciplinas.
SELECT disc.disc_nome, prof.prof_nome, prof.prof_cidade, disc.curso_nome
FROM aula_revisao.disciplina AS disc
LEFT JOIN aula_revisao.professor_disciplina AS prof_disc ON prof_disc.disc_codigo = disc.disc_codigo
LEFT JOIN aula_revisao.professor AS prof ON prof_disc.prof_numero = prof.prof_numero
WHERE prof_disc.ano = '2018';

--2Crie uma consulta que mostre todos os nomes dos professores do curso de CST Sistemas para Internet, no ano de 2018, e os nomes das disciplinas pelas quais são responsáveis.
SELECT prof.prof_nome,disc.disc_nome
FROM aula_revisao.disciplina AS disc
LEFT JOIN aula_revisao.professor_disciplina AS prof_disc ON prof_disc.disc_codigo = disc.disc_codigo
LEFT JOIN aula_revisao.professor AS prof ON prof_disc.prof_numero = prof.prof_numero
WHERE disc.curso_nome = 'CST Sistemas para Internet' AND prof_disc.ano = '2018';

--3Crie uma consulta com todos os nomes de alunos matriculados no ano de 2018, os nomes das disciplinas em que estão matriculados, a cidade onde moram e os nomes dos cursos das disciplinas.
SELECT alu.aluno_nome,disc.disc_nome, alu.aluno_cidade, disc.curso_nome
FROM aula_revisao.disciplina AS disc
LEFT JOIN aula_revisao.matricula AS mtr ON mtr.disc_codigo = disc.disc_codigo
LEFT JOIN aula_revisao.aluno AS alu ON alu.aluno_numero = mtr.aluno_numero
WHERE mtr.ano = '2018';

--4Crie uma consulta que mostre todos os alunos de Palmas que cursam alguma disciplina de Programação de Banco de dados no ano de 2018.
SELECT alu.aluno_nome,disc.disc_nome, alu.aluno_cidade, disc.curso_nome
FROM aula_revisao.disciplina AS disc
LEFT JOIN aula_revisao.matricula AS mtr ON mtr.disc_codigo = disc.disc_codigo
LEFT JOIN aula_revisao.aluno AS alu ON alu.aluno_numero = mtr.aluno_numero
WHERE alu.aluno_cidade = 'Palmas' AND disc.disc_nome = 'Programação de Banco de dados' AND mtr.ano ='2018';

--5Crie uma consulta que mostre todos os professores que não moram em Palmas e que ministram alguma disciplina no curso de CST Sistemas para Internet.
SELECT prof.prof_nome,disc.disc_nome
FROM aula_revisao.disciplina AS disc
LEFT JOIN aula_revisao.professor_disciplina AS prof_disc ON prof_disc.disc_codigo = disc.disc_codigo
LEFT JOIN aula_revisao.professor AS prof ON prof_disc.prof_numero = prof.prof_numero
WHERE disc.curso_nome = 'CST Sistemas para Internet' AND prof.prof_cidade <> 'Palmas';

--6Crie uma consulta que mostre o nome dos professores e a média de aulas que ministram.
SELECT prof.prof_nome, ((SUM(disc.qtd_aulas))/(COUNT(disc.disc_nome))) AS media_aulas
FROM aula_revisao.disciplina AS disc
LEFT JOIN aula_revisao.professor_disciplina AS prof_disc ON prof_disc.disc_codigo = disc.disc_codigo
LEFT JOIN aula_revisao.professor AS prof ON prof_disc.prof_numero = prof.prof_numero
GROUP BY  prof.prof_nome;

--7Crie uma consulta que mostre o nome dos professores o total de aulas que ministram por curso.
SELECT prof.prof_nome, disc.curso_nome,(SUM(disc.qtd_aulas)) AS TOTAL_aulas
FROM aula_revisao.disciplina AS disc
LEFT JOIN aula_revisao.professor_disciplina AS prof_disc ON prof_disc.disc_codigo = disc.disc_codigo
LEFT JOIN aula_revisao.professor AS prof ON prof_disc.prof_numero = prof.prof_numero
GROUP BY  prof.prof_nome,disc.curso_nome;

--8Crie uma consulta que mostre o nome do aluno, nome do curso, código e nome das disciplinas matriculadas de todos os alunos no ano de 2018.
SELECT alu.aluno_nome,disc.curso_nome, disc.disc_codigo,disc.disc_nome
FROM aula_revisao.disciplina AS disc
LEFT JOIN aula_revisao.matricula AS mtr ON mtr.disc_codigo = disc.disc_codigo
LEFT JOIN aula_revisao.aluno AS alu ON alu.aluno_numero = mtr.aluno_numero
WHERE mtr.ano = '2018';