create table Produto (
	codProduto integer primary key,
	nomeProduto varchar(40) not null,
	codGrupo integer not null,
	descricaoProduto varchar(200) not null,
	imgProduto varchar(1000) not null,
	emailResponsavel varchar(200) not null,
	tags varchar(500) not null,
	foreign key (codGrupo) references GrupoProduto(codGrupo)
);

create table GrupoProduto (
	codGrupo integer primary key,
	nomeGrupo varchar(20) not null,
	descricaoGrupo varchar(200) not null,
	imgGrupo varchar(1000) not null
);

create table Regiao (
	codRegiao integer primary key,
	nomeRegiao varchar(50) not null
);

create table Funcionario (
	codFuncionario integer primary key,
	nomeFuncionario varchar(50) not null,
	codRegiao integer not null,
	cargo varchar(100) not null,
	celular varchar(16) not null,
	email varchar(100) not null,
	imgFuncionario varchar(1000) not null,
	FOREIGN KEY (codRegiao) REFERENCES Regiao(codRegiao)
);