-- No exercício BD-03-Exercicio da Tabela Revista e da Tabela Editora
USE tbRevista;

DESC tbrevista;
SELECT * FROM tbrevista;
DESC tbeditora;
SELECT * FROM tbeditora;
ALTER TABLE tbrevista DROP fkRevista;
-- Acrescentar a coluna fkEditora na tabela Revista, com o tipo int e de forma que essa coluna seja uma chave estrangeira que referencia a tabela Editora
ALTER TABLE tbrevista ADD fkEditora INT,
   ADD FOREIGN KEY(fkEditora) REFERENCES tbeditora(idEditora);    
-- Atualizar os dados da coluna fkEditora
UPDATE  tbrevista SET fkEditora = 1000 WHERE idRevista IN (1,3,5,9);
UPDATE  tbrevista SET fkEditora = 1001 WHERE idRevista IN (2,4,6,8);
-- Exibir os dados da tabela Revista
SELECT * FROM tbeditora;
-- select * from Aluno, Curso where fkCurso = idCurso; 
-- • Exibir os dados das revistas e das editoras correspondentes
SELECT * FROM tbrevista,tbeditora WHERE fkEditora = idEditora;
-- • Exibir os dados das revistas e das editoras, porém apenas de uma editora.
SELECT * FROM tbrevista,tbeditora WHERE fkEditora = idEditora AND idEditora = 1001;


-- Em BD-02-Exercicio, vocês fizeram um exercício em que criaram uma tabela Atleta. 
USE bdatleta;
-- Essa tabela deveria ter os campos: idAtleta (int e chave primária da tabela), nome (varchar, tamanho 40), modalidade (varchar, tamanho 40), qtdMedalha (int, representando a quantidade de medalhas que o atleta possui)
DESC tb_Atleta;
SELECT * FROM tb_atleta;
-- No mesmo banco de dados dessa tabela, crie a tabela Pais (Não precisa por acento no nome 
-- da tabela). Essa tabela representa o país de origem do atleta e terá os campos: idPais (int, 
-- chave primária), nome, capital. 

CREATE TABLE tbPais(
	idPais INT PRIMARY KEY AUTO_INCREMENT,
    nomePais VARCHAR(50),
    capitalPais VARCHAR(50)
);

-- Insira dados na tabela Pais.
INSERT INTO tbPais VALUES (NULL, 'Brasil', 'Brasilia'),
						  (NULL, 'Angola', 'Luanda'),
                          (NULL, 'Alemanha','Berlim'),
                          (NULL, 'Argentina','Buenos Aires'),
                          (NULL, 'Bélgica','Bruxelas');
                          
SELECT * FROM tbPais;
SELECT * FROM tb_atleta;
-- Na tabela Atleta, adicione uma coluna chamada fkPais, e configure essa coluna para ser uma 
-- chave estrangeira para a coluna idPais, da tabela Pais.
ALTER TABLE tb_atleta ADD fkPais INT,
	ADD FOREIGN KEY (fkPais) REFERENCES tbPais(idPais);
    
-- Coloque valores nessa coluna, de forma que cada atleta inserido na tabela Atleta tenha um 
-- país de origem correspondente.

-- UPDATE  tbrevista SET fkEditora = 1001 WHERE idRevista IN (2,4,6,8)
UPDATE tb_atleta SET fkPais = 1 WHERE idAtleta IN (1,3,5,7,9,11,13,15,17);
UPDATE tb_atleta SET fkPais = 2 WHERE idAtleta IN (2,4);
UPDATE tb_atleta SET fkPais = 3 WHERE idAtleta IN (6,8);
UPDATE tb_atleta SET fkPais = 4 WHERE idAtleta IN (10,12);
UPDATE tb_atleta SET fkPais = 5 WHERE idAtleta IN (14,16);

-- Exiba os dados dos atletas e dos países correspondentes
SELECT * FROM tb_atleta,tbPais WHERE fkPais = idPais;

-- Exiba os dados dos atletas e do país, mas somente de um determinado país (especifique o 
-- nome do país na consulta).
SELECT * FROM tb_atleta,tbPais WHERE fkPais = idPais AND idPais = 1;


-- . Em BD-02-Exercicio, também havia um exercício em que vocês criaram uma tabela Musica.
USE tbmusica;

DESC tbmusica;

--  No mesmo banco de dados dessa tabela, crie a tabela Album, com os campos: idAlbum 
-- (chave primária), nome, gravadora.
-- Insira dados na tabela Album.
CREATE TABLE tbAlbum (
	idAlbum INT PRIMARY KEY AUTO_INCREMENT,
    nomeAlbum VARCHAR(50),
    gravadoraAlbum VARCHAR(50)
);
INSERT INTO tbAlbum VALUES (NULL,'albumA','gravadora A'),
							(NULL,'albumB','gravadora B'),
                            (NULL,'albumC','gravadora C'),
                            (NULL,'albumD','gravadora D');
-- Na tabela Musica, adicione uma coluna chamada fkAlbum, e configure essa coluna para que 
-- ela seja uma chave estrangeira para a coluna idAlbum, da tabela Album.
ALTER TABLE tb_atleta ADD fkPais INT,
	ADD FOREIGN KEY (fkPais) REFERENCES tbPais(idPais);
    SELECT * FROM tbAlbum;
    
    UPDATE tbmusica  SET fkAlbum = 1 WHERE idMusica IN (1,2);
    UPDATE tbmusica  SET fkAlbum = 2 WHERE idMusica IN (3,4,9);
    UPDATE tbmusica  SET fkAlbum = 3 WHERE idMusica IN (5,6);
    UPDATE tbmusica  SET fkAlbum = 4 WHERE idMusica IN (7,8);
ALTER TABLE tbmusica ADD fkAlbum INT,
	ADD FOREIGN KEY (fkAlbum) REFERENCES tbAlbum(idAlbum);
    
-- Coloque valores nessa coluna, de forma que cada música inserida na tabela Musica tenha um 
-- álbum correspondente
SELECT * FROM tbmusica;
SELECT * FROM tbmusica, tbAlbum WHERE fkAlbum = idAlbum;
SELECT * FROM tbmusica, tbAlbum WHERE fkAlbum = idAlbum AND idAlbum = 2;
SELECT * FROM tbmusica, tbAlbum WHERE fkAlbum = idAlbum AND gravadoraAlbum = 'gravadora A';


--  Em BD-01-Exercicio, vocês criaram em planilhas 3 tabelas (Aluno, Instituicao, Empresa), 
-- colocando dados da sua escolha.
CREATE DATABASE bdAlunos;
USE bdAlunos;
CREATE TABLE tbAlunos(
	raAluno INT PRIMARY KEY AUTO_INCREMENT,
    nomeAluno VARCHAR(50),
    hobbyAluno VARCHAR(50),
	 fkEmpresa INT, FOREIGN KEY (fkEmpresa) REFERENCES tbEmpresa (codEmpresa),
	fkEscola INT, FOREIGN KEY (fkEscola) REFERENCES tbEscola (codEscola) 
);
CREATE TABLE tbEscola(
	codEscola INT PRIMARY KEY AUTO_INCREMENT,
    enderecoEscola VARCHAR(50),
    nomeEscola VARCHAR(50)
);
CREATE TABLE tbEmpresa(
	codEmpresa INT PRIMARY KEY AUTO_INCREMENT,
    nomeEmpresa  VARCHAR(50),
    enderecoEmpresa  VARCHAR(50)
);
CREATE TABLE tbRepresentante(
codRepresentante INT PRIMARY KEY AUTO_INCREMENT,
    nomeRepresentante VARCHAR(50),
	setorRepresentante VARCHAR(50),
    fkEmpresa INT, FOREIGN KEY (fkEmpresa) REFERENCES tbEmpresa (codEmpresa) 
    );

INSERT INTO tbEscola VALUES (NULL,'Vila Floresta ','ETEC Floresta'),
							(NULL,'Conjunto Habitacional Presidente Castelo Branco	','E.E Presidente Castelo Branco'),
                            (NULL,'Vila Guaianazes ','ETEC Guaianazes'),
                            (NULL,'Pinheiros ','ETEC Pinha dourada'),
                            (NULL,'Cidade Tiradentes ','ETEC Floresta');	
                            
INSERT INTO tbEmpresa VALUES (NULL,'Quatá','Rua Joaquim José da Siqueira'),
							(NULL,'C6 Bank','Praça da Independência 135'),
                            (NULL,'Safra ','Rua Antônio Dalco '),
                            (NULL,'Motorola ','Rua Gaspar de Abreu Ferraz'),
                            (NULL,'Stefanini','Rua Diogo Pires Campos');
                            
INSERT INTO tbRepresentante VALUES (NULL, 'Lucas ', 'R.H',1),
									(NULL, 'Bruna','T.I',2),
                                    (NULL, 'Amanda','D.B.A',3),
									(NULL, 'Rodrigo','R.H',4);
                                    
INSERT INTO tbAlunos VALUES (NULL,'Giovanni Hugo Nunes','Esportes',1 ,1),
							(NULL,	'Victor Marcos Vinicius Vieira','Ler manual de carro',2 ,2 ),
                            (NULL,	'Ler manual de carro','Brincar com o pet ', 3,3 ),
                            (NULL,	'Agatha Cecília Mendes ','Comer',4 ,4 ),
                            (NULL,	'Emanuelly Marcela Lima','Assistir filmes ', 2, 1),
                            (NULL,'	Carlos Augusto Augusto Ribeiro ','Ver tiktok ',3 ,2 );
						
SELECT * FROM tbAlunos, tbEscola WHERE fkEmpresa = codEscola;
SELECT * FROM tbAlunos, tbEmpresa WHERE fkEmpresa = codEmpresa;
SELECT * FROM tbAlunos, tbEscola, tbEmpresa WHERE fkEmpresa = codEscola and fkEscola = codEscola;


