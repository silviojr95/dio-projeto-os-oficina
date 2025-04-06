-- criação e seleção do banco de dados para o cenário de OS em uma oficina mecânica
drop database projeto_oficina_dio; 
create database projeto_oficina_dio;
use projeto_oficina_dio;

-- criar tabela clientes
create table clientes(
	idCliente INT auto_increment primary key,
	nomeCompleto VARCHAR(45) NOT NULL,
	cpf CHAR(11) NOT NULL,
    contato VARCHAR(11) NOT NULL,
	constraint unique_clientes unique (cpf)
);

-- criar tabela equipes
create table equipes(
	idEquipe INT auto_increment primary key,
    statusEquipe ENUM('Ocupada', 'Disponível') default 'Disponível',
    tamanhoEquipe INT NOT NULL   
);

-- criar tabela mecanicos
create table mecanicos(
	idMecanico INT auto_increment primary key,
    idEquipe INT,
	nomeCompleto VARCHAR(45) NOT NULL,
    endereco VARCHAR(255) NOT NULL,
    especialidade VARCHAR(45) NOT NULL,
    constraint fk_mecanicos_equipes foreign key (idEquipe) references equipes(idEquipe)
);

-- criar tabela veiculos
create table veiculos(
	idVeiculo INT auto_increment,
	idCliente INT,
    idEquipe INT,
	tipo ENUM('Moto', 'Carro', 'Van', 'Ônibus', 'Caminhão') NOT NULL,
    marca VARCHAR(20) NOT NULL,
    modelo VARCHAR(20) NOT NULL,
    ano CHAR(4) NOT NULL,
    placa VARCHAR(7) NOT NULL,
    cor VARCHAR(20) NOT NULL,
    primary key(idVeiculo, idCliente),
	constraint fk_veiculos_clientes foreign key (idCliente) references clientes(idCliente),
    constraint fk_veiculos_equipes foreign key (idEquipe) references equipes(idEquipe),
	constraint unique_veiculos unique (placa)
);

-- criar tabela pedidos
create table pedidos(
	idPedido INT auto_increment,
    idCliente INT,
    servico ENUM('Conserto', 'Revisão') NOT NULL,
    dataPedido DATE NOT NULL,
    descricaoPedido VARCHAR(255) NOT NULL,
    primary key(idPedido, idCliente),
	constraint fk_pedidos_clientes foreign key (idCliente) references clientes(idCliente),
    constraint unique_pedidos unique (idPedido)
);

-- criar tabela ordens de serviço
create table ordensServico(
	idOS INT auto_increment,
    idPedido INT,
    idEquipe INT,
    idCliente INT,
    dataEmissao DATE NOT NULL,
    dataConclusao DATE,
    statusOS ENUM('Em orçamento', 'Em autorização', 'Em execução', 'Cancelada', 'Concluída') default 'Em orçamento',
    valor FLOAT default 0,
    primary key(idOS, idEquipe),
	constraint fk_ordensServico_equipes foreign key (idEquipe) references equipes(idEquipe),
	constraint fk_ordensServico_pedidos foreign key (idPedido) references pedidos(idPedido),
	constraint fk_ordensServico_clientes foreign key (idCliente) references clientes(idCliente),
    constraint unique_ordensServico unique (idOS)
);

-- criar tabela peças
create table pecas(
	idPeca INT auto_increment primary key,
    peca VARCHAR(45) NOT NULL,
    valorPeca FLOAT NOT NULL
);

-- criar tabela os_peças
create table osPecas(
	idOS INT,
    idPeca INT,
    qtdPecaOS INT default 0,
    primary key(idOS, idPeca),
    constraint fk_osPecas_ordensServico foreign key (idOS) references ordensServico(idOS),
    constraint fk_osPecas_pecas foreign key (idPeca) references pecas(idPeca)
);

-- criar tabela referencias
create table refs(
	idRef INT auto_increment primary key,
    servico VARCHAR(45) NOT NULL,
    valorServico FLOAT NOT NULL
);

-- criar tabela os_referencias
create table osRefs(
	idOS INT,
    idRef INT,
    qtdServicoOS INT default 0,
    primary key(idOS, idRef),
    constraint fk_osRefs_ordensServico foreign key (idOS) references ordensServico(idOS),
    constraint fk_osRefs_refs foreign key (idRef) references refs(idRef)
);