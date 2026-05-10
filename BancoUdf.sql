CREATE TABLE Aluno(
  id_aluno INT PRIMARY KEY AUTO_INCREMENT,
  nome_aluno VARCHAR(45) NOT NULL,
  email VARCHAR(45) UNIQUE,
  idade int NOT NULL
);

CREATE TABLE Professor(
  id_professor INT PRIMARY KEY AUTO_INCREMENT,
  nome_professor VARCHAR(45) NOT NULL,
  titulacao VARCHAR(45) NOT NULL
);

CREATE TABLE Curso(
  id_curso INT PRIMARY KEY AUTO_INCREMENT,
  nome_curso VARCHAR(45) NOT NULL,
  duracao INT NOT NULL
);

CREATE TABLE Disciplina(
  id_disciplina INT PRIMARY KEY AUTO_INCREMENT,
  nome_disciplina VARCHAR(45) NOT NULL,
  CargaHoraria INT,
  professor_id INT,
  curso_id INT,
  FOREIGN KEY (curso_id) REFERENCES Curso(id_curso),
  FOREIGN KEY (professor_id) REFERENCES Professor(id_professor)
);

CREATE TABLE Matricula(
  id_matricula INT PRIMARY KEY AUTO_INCREMENT,
  status VARCHAR(45) NOT NULL,
  aluno_id INT,
  disciplina_id INT,
  FOREIGN KEY (aluno_id) REFERENCES Aluno(id_aluno),
  FOREIGN KEY (disciplina_id) REFERENCES Disciplina(id_disciplina)
);

CREATE TABLE Historico( 
  id_historico INT PRIMARY KEY AUTO_INCREMENT,
  nota DECIMAL(4 , 2) NOT NULL,
  frequencia INT NOT NULL,
  matricula_id INT,
  FOREIGN KEY (matricula_id) REFERENCES Matricula(id_matricula)
);

INSERT INTO Aluno(nome_aluno , email , idade) VALUES
('Lucas silva oliveira' , 'lucas@gmail.com' , 19),
('Mariane souza santos', 'mariane@gmail.com', 30),
('Guilherme ferreira lima', 'guilherme@gmail.com', 45),
('Beatriz Cavalgate Rocha', 'biacavalgate@gmail.com', 13),
('Enzo Gabriel Almeida', 'enzo@gmail.com', 22),
('Julia Marins Costa' , 'julia@gmail.com', 18),
('Rafael Ribeiro Gomes', 'rafael@gmail.com' , 26),
('Larissa carvalho Monte', 'larissa@gmail.com' , 28),
('Thiago Mendes Vieira' , 'thiagom@gmail.com', 17),
('Isabella Barbosa Lima', 'isalima@gmail.com', 16),
('Felipe Cardoso Neto', 'feneto@gmail.com', 23),
('Manuella Araujo Paz', 'manupaz@gmail.com', 29),
('Gustavo Henrique sales', 'gussales@gmail.com', 38),
('Valentina Lopes Duarte', 'Valentina@gmail.com', 56),
('Murilo Peixoto Henrique Sales', 'murilo@gmail.com', 47),
('Marta Morais de Oliveira', 'Marta@gmail.com', 89),
('Elise Matsunaga', 'matsunaga@gmail.com', 65),
('Geovanne Marcondes Meirelles', 'Geovanne@gmail.com' , 63),
('Naiara Peixoto dos Santos', 'Naiara@gmail.com', 23),
('Anselmo Ramon de Oliveira', 'anselmooliver@gmail.com', 76),
('Daniel de Oliveira Neves', 'daniel@gmail.com', 36),
('Sofia Espanha', 'sofiaes@gmail.com', 16),
('Alisson Jesus de Oliveira', 'Alisson@gmail.com', 19),
('Geovanna Santos da Silva', 'Geosantos@gmail.com', 24),
('Larrsa Meirelles dos Santos', 'LariMeirelles@gmail.com', 22),
('Macelo Morais Brito', 'marcelomb@gmail.com', 45),
('Marcos Leal Mendes', 'Marcoslm@gmail.com', 18),
('Marcio Santos Andrade', 'Marcioas@gmail.com', 14),
('Davi Brito de Morais', 'davibmorais@gmail.com', 29),
('Antonio Lopes de Andrade', 'tonilandrade@gmail.com', 34);

INSERT INTO Professor(nome_professor , titulacao) VALUES
('DR. Ricardo Antunes', 'Doutorado'),
('ME. Sandra Helena Porto', 'Mestrado'),
('DR. Roberto Carlos Magalhães' , 'Doutorado'),
('ESP. Ana Paula Viana', 'Especialização'),
('DR. Marcos Vinícius Terra', 'Doutorado');

INSERT INTO Curso(nome_curso , duracao) VALUES
('Análise e Desenvolvimento de Sistemas', 4),
('Ciências da computação', 8),
('Engenharia de software', 8),
('Gestão de tecnologia da informação', 8),
('Inteligencia Artificial', 8);

INSERT INTO Disciplina(nome_disciplina , professor_id , curso_id ,CargaHoraria) VALUES
('Algoritimo e Programação', 1 , 2 ,40),
('Estrutura de dados', 2 , 3 ,20),
('Banco de dados I', 3 , 4 ,30),
('Engenharia de Requisitos', 4 , 5, 80),
('Redes de computadores', 5 , 1,90),
('Programação orientada a objetos', 3 , 3 , 30),
('Arquitetura de computadores', 4 , 2 , 40),
('Sistemas operacionais', 2 , 4, 20),
('Segurança da informação', 1 , 1 , 30),
('Calculo I', 3 , 3 ,120);

INSERT INTO Matricula(aluno_id , disciplina_id , status) VALUES
(1 , 2 , 'Concluida'),
(2 , 3 , 'Em Andamento'),
(3 , 4 , 'Concluida'),
(4 , 5 , 'Concluida'),
(5 , 1 , 'Concluida'),
(6 , 3 , 'Concluida'),
(7 , 2 , 'Em Andamento'),
(8 , 2 , 'Cancelada'),
(9 , 1 , 'Concluida'),
(10 , 5 , 'Cancelada'),
(11 , 1 , 'Concluida'),
(12 , 4 , 'Concluida'),
(13 , 4 ,'Em Andamento'),
(14 , 2 , 'Concluida'),
(15 , 5 , 'Cancelada'),
(16 , 2 , 'Concluida'),
(17 , 1 , 'Em Andamento'),
(18 , 2 , 'Cancelada'),
(19 , 4 , 'Concluida'),
(20 , 5 , 'Em Andamento'),
(21 , 1 , 'Concluida'),
(22 , 3 , 'Em Andamento'),
(23 , 4, 'Cancelada'),
(24 , 2 , 'Concluida'),
(25 , 3 , 'Concluida'),
(26 , 5 , 'Concluida'),
(27 , 4 , 'Em Andamento'),
(28 , 1 , 'Concluida'),
(29 , 2 , 'Concluida'),
(30 , 2 , 'Em Andamento');

INSERT INTO Historico(matricula_id ,frequencia , nota) VALUES
(1 , 30 , 9.66),
(2 , 40 , 7.88),
(3 , 40 , 5.66),
(4 , 20 , 2.33),
(5 , 30 , 8.99),
(6, 40 , 10.00),
(7 , 30 , 4.55),
(9 , 30 , 9.89),
(10 , 20 , 5.66),
(11 , 30 , 3.00),
(12 , 30 , 9.00),
(13 , 20 , 9.44),
(14 , 40 , 10.00),
(16 , 30 , 2.33),
(19 , 40 , 3.44),
(21 , 20 , 6.77),
(24 , 50 , 7.55),
(25 , 20 , 5.44),
(26 , 30 , 6.00),
(28 , 120 , 4.33),
(29 , 60 , 4.00);

SELECT 
  Historico.id_historico as id,
  Aluno.nome_aluno as aluno,
  Disciplina.nome_disciplina as disciplina,
  Matricula.status,
  Historico.frequencia,
  Historico.nota
FROM Historico
INNER JOIN Matricula ON Historico.matricula_id = Matricula.id_matricula
INNER JOIN Aluno ON Matricula.aluno_id = Aluno.id_aluno
INNER JOIN Disciplina ON Matricula.disciplina_id = Disciplina.id_disciplina;

SELECT 
  Aluno.nome_aluno as aluno, 
  max(Historico.nota) as Notas 
FROM Historico 
INNER JOIN Matricula ON Historico.matricula_id = Matricula.id_matricula
INNER JOIN Aluno ON Matricula.aluno_id = Aluno.id_aluno
GROUP BY Aluno.nome_aluno ORDER BY Notas DESC;

SELECT 
  Aluno.nome_aluno as aluno,
  min(Historico.nota) as nota
FROM Historico
INNER JOIN Matricula ON Historico.matricula_id = Matricula.id_matricula
INNER JOIN Aluno ON Matricula.aluno_id = Aluno.id_aluno
GROUP BY Aluno.nome_aluno ORDER BY nota ASC;

SELECT 
  Historico.id_historico AS id,
  Aluno.nome_aluno AS aluno,
  Disciplina.nome_disciplina as Disciplina,
  Historico.nota
FROM Historico
INNER JOIN Matricula ON Historico.matricula_id = Matricula.id_matricula
INNER JOIN Aluno ON Matricula.aluno_id = Aluno.id_aluno
INNER JOIN Disciplina ON Matricula.disciplina_id = Disciplina.id_disciplina
WHERE Aluno.idade >= 18 
  AND Historico.nota >= 6;
  
SELECT
  Aluno.nome_aluno as aluno,
  AVG(nota) AS Media 
FROM Historico
INNER JOIN Matricula ON Historico.matricula_id = Matricula.id_matricula
INNER JOIN Aluno ON Matricula.aluno_id = Aluno.id_aluno
GROUP BY Aluno.nome_aluno ORDER BY media DESC;

SELECT nome_aluno as aluno, email , idade FROM Aluno;

SELECT nome_professor as professor, titulacao FROM Professor;

SELECT nome_curso as curso , duracao FROM Curso;

SELECT 
  Disciplina.id_disciplina as id,
  Disciplina.nome_disciplina as disciplina,
  Disciplina.CargaHoraria,
  Professor.nome_professor as professor,
  Curso.nome_curso as curso
FROM Disciplina
INNER JOIN Professor ON Disciplina.professor_id = Professor.id_professor
INNER JOIN Curso ON Disciplina.curso_id = Curso.id_curso;

SELECT
  Matricula.id_matricula as id,
  Aluno.nome_aluno as aluno,
  Disciplina.nome_disciplina as disciplina,
  Matricula.status
FROM Matricula
INNER JOIN Aluno ON Matricula.aluno_id = Aluno.id_aluno
INNER JOIN Disciplina ON Matricula.disciplina_id = Disciplina.id_disciplina;

SELECT 
  Historico.id_historico as id,
  Aluno.nome_aluno as aluno,
  Disciplina.nome_disciplina as Disciplina,
  Professor.nome_professor as Professor,
  Historico.nota,
  Historico.frequencia
FROM Historico
INNER JOIN Matricula ON Historico.matricula_id = Matricula.id_matricula
INNER JOIN Aluno ON Matricula.aluno_id = Aluno.id_aluno
INNER JOIN Disciplina ON Matricula.disciplina_id = Disciplina.id_disciplina
INNER JOIN Professor ON Disciplina.professor_id = Professor.id_professor;

DESCRIBE Aluno;
DESCRIBE Professor;
DESCRIBE Disciplina;
DESCRIBE Curso;
DESCRIBE Matricula;
DESCRIBE Historico;

SHOW TABLES;