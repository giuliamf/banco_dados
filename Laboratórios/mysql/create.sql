
CREATE TABLE  CLIENTE
	(codCli		INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	 nome 		varchar(65) NOT NULL,
	 endereco	varchar(150) NOT NULL,
	 fone		INTEGER);



CREATE TABLE LOCACAO
	(codLoc		INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	 codCli		INTEGER UNSIGNED references Cliente(codCli),
	 dtInicio 	date,
	 dtFim		date);


CREATE TABLE  CATEGORIA
	(codCat		INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	 descricao	varchar(30) NOT NULL);



CREATE TABLE FILME
	(codFilme	INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	 titulo		varchar(65) NOT NULL,
	 codCat		INTEGER UNSIGNED,
	 FOREIGN KEY(codCat) references CATEGORIA(codCat));


CREATE TABLE FITA
	(codFita	INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	 codFilme	INTEGER UNSIGNED references Filme(codFilme),
	 parte		char(1) );



CREATE TABLE LOC_FITA
	(codFita	INTEGER UNSIGNED references Fita(CodFita),
	 codLoc		INTEGER UNSIGNED references Locacao(codLoc),
	PRIMARY KEY (codFita, codLoc));



CREATE TABLE ATOR
	(codAtor	INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	 nreal		varchar(65) NOT NULL,
	 nFan		varchar(65) NOT NULL,
	 dtNasc		date);


CREATE TABLE FILME_ATOR
	(codFilme	INTEGER UNSIGNED references Filme(codFilme),
	 codAtor	INTEGER UNSIGNED references Ator(codAtor));


ALTER TABLE FILME_ATOR
ADD PRIMARY KEY (codFilme, codAtor);

