-- Liste todos os dados da tabela Ator
select * from ator;

-- Liste o nome dos filmes e suas respectivas categorias
select filme.titulo, categoria.descricao
from filme
join categoria on filme.codCat = categoria.codCat;

-- Liste o nome dos filmes e o nome dos atores de cada filme
select filme.titulo, ATOR.nreal
from filme
join filme_ator on filme.codFilme = filme_ator.codFilme
join ator on filme_ator.codAtor = ator.codAtor;

-- Liste o nome de todos os filmes cadastrados, caso tenha ator, liste o autor também
select filme.titulo, ATOR.nreal
from filme
left join filme_ator ON filme.codFilme = filme_ator.codFilme
left join ator ON filme_ator.codAtor = ator.codAtor;

-- Liste o nome dos atores que trabalharam no mesmo filme de Gloria Pires de forma ordenada
select distinct atorX.nreal 
from filme_ator ator1
join filme_ator ator2 on ator1.codFilme = ator2.codFilme
join ator atorX on ator2.codAtor = atorX.codAtor
where ator1.codAtor = (select codAtor from ator where nreal = 'Gloria Pires')
order by atorX.nreal;

-- Liste o nome de todos os atores que começam com a letra A. Utilize o comando LIKE.
select nreal from ator where nreal like 'A%';

-- Quantos clientes tem cadastrados no banco de dados?
select count(*) from cliente;

-- Liste o nome dos clientes que já alugaram filmes (os nomes não devem ser repetidos)
select distinct cliente.nome
from cliente
join locacao on cliente.codCli = locacao.codCli;

-- Liste o nome dos clientes e o número de locação realizada por cada um respectivamente
select cliente.nome, count(locacao.codLoc) as qtdLocacoes
from cliente
join locacao on cliente.codCli = locacao.codCli
group by cliente.nome;

-- Liste o nome dos clientes e o número de locação apenas dos clientes que tiveram mais de uma locação
select cliente.nome, count(locacao.codLoc) as qtdLocacoes
from cliente
join locacao on cliente.codCli = locacao.codCli
group by cliente.nome
having count(locacao.codLoc) > 1;