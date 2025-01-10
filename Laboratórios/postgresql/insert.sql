insert into CLIENTE(codCli, nome, endereco, fone) values(1, 'Maria da Silva', 'BSB', '12341234');
insert into CLIENTE(codCli, nome, endereco, fone) values(2, 'Jose Geraldo', 'São Paulo', '13243647');
insert into CLIENTE(codCli, nome, endereco, fone) values(3, 'Marcos da Silva', 'Rio de Janeiro', '34678923');
insert into CLIENTE(codCli, nome, endereco, fone) values(4, 'Marcelo Oliveira', 'Belém', '13579323');
insert into CLIENTE(codCli, nome, endereco, fone) values(5, 'Marcos Antonio', 'Pará', '73839581');


insert into LOCACAO(codLoc, codCli, dtInicio, dtFim) values(1, 1, '2009-02-02', '2009-02-05');
insert into LOCACAO(codLoc, codCli, dtInicio, dtFim) values(2, 1, '2009-02-02', '2009-02-05');
insert into LOCACAO(codLoc, codCli, dtInicio, dtFim) values(3, 2, '2009-05-02', '2009-05-05');
insert into LOCACAO(codLoc, codCli, dtInicio, dtFim) values(4, 3, '2009-02-10', '2009-02-12');
insert into LOCACAO(codLoc, codCli, dtInicio, dtFim) values(5, 3, '2009-02-15', '2009-02-17');


insert into CATEGORIA(codCat, descricao) values(1, 'Acao');
insert into CATEGORIA(codCat, descricao) values(2, 'Comedia');
insert into CATEGORIA(codCat, descricao) values(3, 'Desenho');
insert into CATEGORIA(codCat, descricao) values(4, 'Terror');
insert into CATEGORIA(codCat, descricao) values(5, 'Romance');


insert into FILME(codFilme, titulo, codCat) values(1, 'Titanic', 5);
insert into FILME(codFilme, titulo, codCat) values(2, 'Se eu fosse voce', 3);
insert into FILME(codFilme, titulo, codCat) values(3, 'Poderoso Chefão', 1);
insert into FILME(codFilme, titulo, codCat) values(4, 'Os Vagabundos Trapalhões', 2);
insert into FILME(codFilme, titulo, codCat) values(5, 'Massaropi', 2);

insert into FITA(codFita, codFilme, parte) values(1, 1, '1');
insert into FITA(codFita, codFilme, parte) values(2, 1, '1');
insert into FITA(codFita, codFilme, parte) values(3, 2, '1');
insert into FITA(codFita, codFilme, parte) values(4, 2, '2');
insert into FITA(codFita, codFilme, parte) values(5, 3, '1');


insert into LOC_FITA(codLoc, codFita) values(1, 1);
insert into LOC_FITA(codLoc, codFita) values(2, 2);
insert into LOC_FITA(codLoc, codFita) values(3, 3);
insert into LOC_FITA(codLoc, codFita) values(4, 4);
insert into LOC_FITA(codLoc, codFita) values(5, 5);


insert into ATOR(codAtor, nreal, nFan, dtNasc) values(1, 'Leonardo DiCaprio', 'Leonardo DiCaprio', '1980-03-19');
insert into ATOR(codAtor, nreal, nFan, dtNasc) values(2, 'Kate Winslet', 'Kate Winslet', '1983-12-19');
insert into ATOR(codAtor, nreal, nFan, dtNasc) values(3, 'Antônio de Carvalho Barbosa', 'Toni Ramos', '1956-03-01');
insert into ATOR(codAtor, nreal, nFan, dtNasc) values(4, 'Antonio Rentao Aragao', 'Didi', '1980-05-20');
insert into ATOR(codAtor, nreal, nFan, dtNasc) values(5, 'Gloria Pires', 'Gloria Pires', '1980-07-19');


insert into FILME_ATOR(codFilme, codAtor) values(1, 1);
insert into FILME_ATOR(codFilme, codAtor) values(1, 2);
insert into FILME_ATOR(codFilme, codAtor) values(2, 3);
insert into FILME_ATOR(codFilme, codAtor) values(2, 5);
insert into FILME_ATOR(codFilme, codAtor) values(4, 4);
