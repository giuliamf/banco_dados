CREATE TABLE Proprietario(
	CPF char(11) primary key,
	Nome varchar(100),
	Endereco varchar(100),
	DataNasc date,
	Sexo char(1),	-- F ou M
	Idade int);

CREATE TABLE Categoria(
	id_Categoria int primary key,
	Descricao varchar(100));

CREATE TABLE Modelo(
	id_Modelo int primary key,
	Descricao varchar(100));

CREATE TABLE Veiculo(
	Placa char(7) primary key,
	Chassi char(17),
	Ano int,
	Cor varchar(50),
	idProprietario char(11),
	idModelo int,
	idCategoria int,

	foreign key (idProprietario) references proprietario(CPF),
	foreign key (idModelo) references modelo(id_Modelo),
	foreign key (idCategoria) references categoria(id_Categoria)
);

CREATE TABLE TipoInfracao(
	id_Tipo int primary key,
	valor decimal(2,2),
	descricao varchar(100)
);

CREATE TABLE Local(
	id_Local int primary key,
	posicao varchar(100),
	velocidade int
);

CREATE TABLE Agente(
	matricula int primary key,
	nome varchar(100),
	data_contratacao date,
	tempo_servico int -- em dias?
);

CREATE TABLE Infracao(
	velocidade_aferida int,
	data_hora varchar(20), -- 10/12/2024 15:25
	idAgente int,
	idLocal int,
	idVeiculo char(7),
	idTipo_Infracao int,

	primary key(data_hora, idVeiculo, idTipo_Infracao),

	foreign key (idAgente) references agente(matricula),
	foreign key (idLocal) references local(id_Local),
	foreign key (idVeiculo) references veiculo(Placa),
	foreign key (idTipo_Infracao) references tipoinfracao(id_Tipo)
);



