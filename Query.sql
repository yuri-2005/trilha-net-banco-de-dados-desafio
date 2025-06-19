-- 1
SELECT Nome, Ano FROM Filmes;

-- 2
SELECT Nome, Ano FROM Filmes ORDER BY Ano ASC;

-- 3
SELECT * FROM Filmes WHERE Nome LIKE 'De Volta%';

-- 4
SELECT * FROM Filmes WHERE Ano = 1997;

-- 5 
SELECT * FROM Filmes WHERE Ano > 2000;

-- 6
SELECT * FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao;

-- 7 
SELECT Ano, COUNT(*) AS Quantidade FROM Filmes GROUP BY Ano ORDER BY Duracao DESC;

-- 8
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'M';

-- 9 
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome;

-- 10
SELECT F.Nome, G.Genero FROM Filmes F INNER JOIN Filmesgenero FG ON F.Id = FG.IdFilme 
INNER JOIN Generos G ON G.Id = FG.IdGenero;

-- 11 
SELECT F.Nome, G.Genero FROM Filmes F INNER JOIN Filmesgenero FG on F.Id = FG.IdFilme 
INNER JOIN Generos G on G.Id = FG.IdGenero WHERE G.Genero = 'Misterio';

-- 12 
SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, E.Papel FROM Filmes F INNER JOIN Elencofilme E ON F.Id = E.IdFilme 
INNER JOIN Atores A ON A.Id = E.IdAtor;