--Buscar o nome e ano dos filmes.
select Nome, Ano from dbo.Filmes

--Buscar o nome e ano dos filmes ordenados em ordem crescente pelo ano.
select Nome, Ano from dbo.Filmes
order by Ano

--Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
select Nome, Ano, Duracao from dbo.Filmes
where Nome = 'De Volta para o Futuro'

--Buscar os filmes lançados em 1997
select Nome, Ano, Duracao from dbo.Filmes
where Ano = 1997

--Buscar os filmes lançados após o ano 2000
select Nome, Ano, Duracao from dbo.Filmes
where Ano > 2000

--Buscar os filmes com a duração maior que 100 e menor que 150,
--ordenado pela duração em ordem crescente
select Nome, Ano, Duracao from dbo.Filmes
where Duracao between 101 and 150
order by Duracao

--Buscar a quantidade de filmes lançadas no ano, agrupando por ano ordenando pela
--duracao em ordem decrescente
select Ano, Count(*) Quantidade from dbo.Filmes
group by Ano
order by max(Duracao) desc

--Buscar os atores do genero masculino, retornando o primeiro nome e ultimo nome
select PrimeiroNome, UltimoNome, Genero from dbo.Atores
where Genero = 'M'

--Buscara os atores do genero feminino, retornando o priemiro nome e ultimo nome
--e ordednando pelo primeiro nome
select PrimeiroNome, UltimoNome, Genero from dbo.Atores
where Genero = 'F'
order by PrimeiroNome

--Buscar o nome do filme e o genero
select f.Nome, g.Genero from dbo.Filmes f
inner join dbo.FilmesGenero fg on f.Id = fg.IdFilme
inner join dbo.Generos g on g.Id = fg.IdGenero

--Buscar o nome do filme e o genero do tipo "Misterio"
select f.Nome, g.Genero from dbo.Filmes f
inner join dbo.FilmesGenero fg on f.Id = fg.IdFilme
inner join dbo.Generos g on g.Id = fg.IdGenero
where Genero = 'Mistério'

--Buscar o nome do filme e os atores, trazendo o Primeiro nome e ultimo nome e seu papel
select f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel from dbo.Filmes f
inner join dbo.ElencoFilme ef on ef.IdFilme = f.Id
inner join dbo.Atores a on a.Id = ef.IdAtor
