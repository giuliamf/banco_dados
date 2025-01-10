CREATE TABLE  CLIENTE
	(codCli		SERIAL PRIMARY KEY,
	 nome 		varchar(65) NOT NULL,
	 endereco	varchar(150) NOT NULL,
	 fone		INTEGER);


CREATE TABLE LOCACAO
	(codLoc		SERIAL PRIMARY KEY,
	 codCli		INTEGER references Cliente(codCli),
	 dtInicio 	date,
	 dtFim		date);


CREATE TABLE  CATEGORIA
	(codCat		SERIAL PRIMARY KEY,
	 descricao	varchar(30) NOT NULL);


CREATE TABLE FILME
	(codFilme	SERIAL PRIMARY KEY,
	 titulo		varchar(65) NOT NULL,
	 codCat		INTEGER,
	 FOREIGN KEY(codCat) references CATEGORIA(codCat));


CREATE TABLE FITA
	(codFita	SERIAL PRIMARY KEY,
	 codFilme	INTEGER references Filme(codFilme),
	 parte		char(1) );



CREATE TABLE LOC_FITA
	(codFita	INTEGER references Fita(CodFita),
	 codLoc		INTEGER references Locacao(codLoc),
	PRIMARY KEY (codFita, codLoc));



CREATE TABLE ATOR
	(codAtor	SERIAL PRIMARY KEY,
	 nreal		varchar(65) NOT NULL,
	 nFan		varchar(65) NOT NULL,
	 dtNasc		date);


CREATE TABLE FILME_ATOR
	(codFilme	INTEGER references Filme(codFilme),
	 codAtor	INTEGER references Ator(codAtor));


ALTER TABLE FILME_ATOR
ADD PRIMARY KEY (codFilme, codAtor);