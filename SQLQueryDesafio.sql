-- 1� BUSCAR O NOME E ANO DOS FILMES
SELECT
	Nome,
	Ano
FROM Filmes

-- 2� BUSCAR O NOME E ANO DOS FILMES, ORDENADOS POR ORDEM CRESCENTE PELO ANO
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
ORDER BY Ano 

-- 3� BUSCAR PELO FILME DE VOLTA PARA O FUTURO, TRAZENDO O NOME, ANO E A DURA��O
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Nome = 'De Volta para O Futuro' 

-- 4� BUSCAR OS FILMES LAN�ADOS EM 1997
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano = 1997 

-- 5� BUSCAR OS FILMES LAN�ADOS AP�S O ANO 2000
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano > 2000

-- 6� BUSCAR OS FILMES COM A DURA��O MAIOR QUE 100 E MENOR QUE 150, ORDENADO PELA DURA��O EM ORDEM CRESCENTE
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

-- 7� BUSCAR A QUANTIDADE DE FILMES LAN�ADAS NO ANO, AGRUPANDO POR ANO, ORDENANDO PELA DURA��O EM ORDEM DECRESCENTE
SELECT
	Ano,
	COUNT(*) Duracao
FROM Filmes
GROUP BY Ano
ORDER BY Duracao DESC
	
-- 8� BUSCAR OS ATORES DO G�NERO MASCULINO, RETORNANDO O PRIMEIRO NOME E ULTIMO NOME
SELECT
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero	
FROM Atores
WHERE Genero = 'M'

-- 9� BUSCAR OS ATORES DO G�NERO FEMININO, RETORNANDO O PRIMEIRO NOME, ULTIMO NOME E ORDENANDO PELO PRIMEIRO NOME
SELECT
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero	
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- 10� BUSCAR O NOME DO FILME E O G�NERO
SELECT
	F.Nome,
	G.Genero
FROM
	Filmes F
INNER JOIN
	FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN
	Generos G ON G.Id = FG.IdGenero

-- 11� BUSCAR O NOME DO FILME E O G�NERO DO TIPOE "MIST�RIO"
SELECT
	F.Nome,
	G.Genero
FROM
	Filmes F
INNER JOIN
	FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN
	Generos G ON G.Id = FG.IdGenero
WHERE G.Genero = 'Mist�rio'

-- BUSCAR O NOME DO FILME E OS ATORES, TRAZENDO O PRIMEIRO NOME, ULTIMO NOME E O PAPEL
SELECT
	F.Nome,
	A.PrimeiroNome,
	A.UltimoNome,
	EF.Papel
FROM
	Filmes F
INNER JOIN
	ElencoFilme EF ON F.Id = EF.IdFilme
INNER JOIN
	Atores A ON A.Id = EF.IdAtor
