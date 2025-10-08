CREATE DATABASE ABD_03361_A_RITA_CAGIANO;

USE ABD_03361_A_RITA_CAGIANO;



INSERT INTO COMIDAS_FAVORITAS (NOME, COMIDA, CATEGORIA_COMIDA, NOTA_QUALIDADE, CIDADE) VALUES ('CARLA', 'lasanha', 'massas', 9, 'São Paulo')

INSERT INTO COMIDAS_FAVORITAS (NOME, COMIDA, CATEGORIA_COMIDA, NOTA_QUALIDADE, CIDADE)
VALUES
('Lucia', 'baião de dois', 'comida nordestina', 9, 'Fortaleza'),
('Camila', 'macarronada', 'comida italiana', 10, 'São Paulo'),
('Carlos', 'yakisoba', 'comida chinesa', 9, 'São Paulo'),
('Rita', 'pizza', 'comida italiana', 10, 'São paulo');

-- SELECIONE TODAS AS COMIDAS COM NOTA MAIOR QUE 8:
SELECT * FROM COMIDAS_FAVORITAS WHERE NOTA_QUALIDADE > 8;

-- MOSTRE APENAS O NOME DAS PESSOAS E SUAS COMIDAS FAVORITAS DO TIPO DOCE ORDENADAS PELO NOME

-- mostre a comida favorita de quem mora em São Paulo ou Rio de janeiro:
SELECT NOME, COMIDA FROM COMIDAS_FAVORITAS WHERE CIDADE IN ('São Paulo', 'Rio de Janeiro');

INSERT INTO COMIDAS_FAVORITAS (NOME, COMIDA, CATEGORIA_COMIDA, NOTA_QUALIDADE, CIDADE)
VALUES
	('Maria', 'pudim', 'doce', 9, 'Paraná'),
	('Ana', 'pavê', 'doce', 7, 'São Paulo'),
	('Lourdes', 'arroz doce', 'doce', 5, 'Rio de Janeiro'),
	('Karen', 'feijoada', 'brasileira', 8, 'Minas Gerais');

-- atualize a nota de uma coluna qualquer para 10:
UPDATE COMIDAS_FAVORITAS
SET NOTA_QUALIDADE = 10
WHERE ID = 7

-- atualize todas as comidas que contenham a palavra pizza para salgado:
UPDATE COMIDAS_FAVORITAS
SET CATEGORIA_COMIDA = 'salgado'
WHERE COMIDA LIKE '%pizza%';

-- EXCLUA TODAS AS COMIDAS QUE TENHAM NOTA MENOR QUE 5:
DELETE FROM COMIDAS_FAVORITAS
WHERE NOTA_QUALIDADE < 5;

-- mostre o nome da pessoa e a comida favorita, onde o nome tenha mais de 10 caracteres, a nota esteja entre 7 e 10:
SELECT NOME, COMIDA FROM COMIDAS_FAVORITAS
WHERE CHAR_LENGTH(NOME) > 10
	AND NOTA_QUALIDADE BETWEEN 7 AND 10;
    
-- mostre o nome da pessoa e a comida favorita, onde o nome tenha menos de 5 caracteres, a nota esteja entre 7 e 10:
SELECT NOME, COMIDA FROM COMIDAS_FAVORITAS
WHERE CHAR_LENGTH(NOME) > 5
	AND NOTA_QUALIDADE BETWEEN 7 AND 10;




SELECT * FROM COMIDAS_FAVORITAS


-- NOME_PESSOA COMIDA TIPO NOTA CIDADE


