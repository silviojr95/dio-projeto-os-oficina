-- Seeds para clientes
INSERT INTO clientes (nomeCompleto, cpf, contato) VALUES
('João Silva', '12345678901', '11999999999'),
('Maria Oliveira', '98765432100', '21988888888'),
('Carlos Mendes', '65432198700', '31977777777'),
('Ana Santos', '45678912311', '41966666666'),
('Beatriz Almeida', '32165498700', '51955555555');

-- Seeds para equipes
INSERT INTO equipes (statusEquipe, tamanhoEquipe) VALUES
('Disponível', 2), -- Equipe 1: Sem OS pendentes
('Disponível', 3), -- Equipe 2: OS 2 já concluída
('Ocupada', 1),    -- Equipe 3: OS 3 está em execução
('Ocupada', 4),    -- Equipe 4: OS 4 está em orçamento
('Disponível', 2); -- Equipe 5: OS 5 concluída

-- Seeds para mecanicos
INSERT INTO mecanicos (idEquipe, nomeCompleto, endereco, especialidade) VALUES
(1, 'Fernando Souza', 'Rua A, 123, São Paulo', 'Motor'),
(1, 'Lucas Lima', 'Rua B, 456, Rio de Janeiro', 'Suspensão'),
(2, 'Cláudia Pereira', 'Rua C, 789, Belo Horizonte', 'Transmissão'),
(2, 'Juliana Costa', 'Rua D, 1011, Porto Alegre', 'Elétrica'),
(2, 'Ricardo Almeida', 'Rua E, 1213, Curitiba', 'Freios'),
(3, 'Mariana Santos', 'Rua F, 222, Florianópolis', 'Pintura'),
(4, 'Carlos Eduardo', 'Rua G, 123, Brasília', 'Suspensão'),
(4, 'Ana Paula', 'Rua H, 456, Recife', 'Transmissão'),
(4, 'Roberto Silva', 'Rua I, 789, Salvador', 'Motor'),
(4, 'Pedro Henrique', 'Rua J, 654, Manaus', 'Elétrica'),
(5, 'Rafael Oliveira', 'Rua K, 888, Goiânia', 'Motor'),
(5, 'Joana Silva', 'Rua L, 999, Curitiba', 'Freios');

-- Seeds para veiculos
INSERT INTO veiculos (idCliente, idEquipe, tipo, marca, modelo, ano, placa, cor) VALUES
(1, 1, 'Carro', 'Toyota', 'Corolla', '2020', 'ABC1234', 'Preto'),
(2, 2, 'Moto', 'Honda', 'CB500F', '2018', 'DEF5678', 'Vermelha'),
(3, 3, 'Van', 'Fiat', 'Ducato', '2015', 'GHI9101', 'Branca'),
(4, 4, 'Ônibus', 'Mercedes', 'Sprinter', '2017', 'JKL1122', 'Azul'),
(5, 5, 'Caminhão', 'Volvo', 'FH16', '2019', 'MNO3344', 'Cinza');

-- Seeds para pedidos
INSERT INTO pedidos (idCliente, servico, dataPedido, descricaoPedido) VALUES
(1, 'Revisão', '2025-04-01', 'Revisão completa do veículo'),
(2, 'Conserto', '2025-04-02', 'Troca de peças da suspensão'),
(3, 'Conserto', '2025-04-03', 'Reparos na transmissão'),
(4, 'Revisão', '2025-04-04', 'Revisão elétrica e mecânica'),
(5, 'Conserto', '2025-04-05', 'Manutenção de freios e motor');

-- Seeds para ordens de serviço (valores calculados corretamente)
INSERT INTO ordensServico (idPedido, idEquipe, idCliente, dataEmissao, dataConclusao, statusOS, valor) VALUES
(1, 1, 1, '2025-04-01', '2025-04-05', 'Concluída', 200.00), -- 150 (serviço) + 50 (peça)
(2, 2, 2, '2025-04-02', '2025-04-06', 'Concluída', 1200.00), -- 400 (serviço) + 800 (peças)
(3, 3, 3, '2025-04-03', NULL, 'Em execução', 200.00), -- 200 (peça)
(4, 4, 4, '2025-04-04', NULL, 'Em orçamento', 0.00), -- Sem peças ou serviços
(5, 5, 5, '2025-04-05', '2025-04-10', 'Concluída', 1580.00); -- 400 (serviços) + 1180 (peças)

-- Seeds para peças
INSERT INTO pecas (peca, valorPeca) VALUES
('Filtro de ar', 50.00),
('Pastilhas de freio', 120.00),
('Correia dentada', 200.00),
('Bateria', 350.00),
('Amortecedor', 400.00);

-- Seeds para os_peças
INSERT INTO osPecas (idOS, idPeca, qtdPecaOS) VALUES
(1, 1, 1), -- Filtro de ar
(2, 5, 2), -- 2 Amortecedores
(3, 3, 1), -- Correia dentada
(5, 2, 4), -- 4 Pastilhas de freio
(5, 4, 2); -- 2 Baterias

-- Seeds para referências (serviços)
INSERT INTO refs (servico, valorServico) VALUES
('Troca de óleo', 150.00),
('Revisão elétrica', 300.00),
('Revisão mecânica', 400.00),
('Balanceamento', 100.00),
('Alinhamento', 200.00);

-- Seeds para os_referencias
INSERT INTO osRefs (idOS, idRef, qtdServicoOS) VALUES
(1, 1, 1), -- Troca de óleo
(2, 3, 1), -- Revisão mecânica
(5, 5, 2); -- 2 Alinhamentos



-- SEGUNDO LOTE:

-- Seeds para clientes
INSERT INTO clientes (nomeCompleto, cpf, contato) VALUES
('Luiz Silva', '12312312399', '11988887777'),
('Fernanda Costa', '98798798711', '21955554444'),
('Daniel Oliveira', '65465465422', '31944443333'),
('Juliana Mendes', '45645645633', '41933332222'),
('Roberto Lima', '32132132144', '51922221111');

-- Seeds para equipes
INSERT INTO equipes (statusEquipe, tamanhoEquipe) VALUES
('Disponível', 1), -- Equipe 6: Sem OS pendentes
('Disponível', 2), -- Equipe 7: Sem OS pendentes
('Ocupada', 3),    -- Equipe 8: Com OS em execução
('Ocupada', 4),    -- Equipe 9: Com OS em orçamento
('Disponível', 1); -- Equipe 10: OS concluídas

-- Seeds para mecanicos
INSERT INTO mecanicos (idEquipe, nomeCompleto, endereco, especialidade) VALUES
(6, 'Paulo Santos', 'Rua A, 112, São Paulo', 'Elétrica'),
(7, 'Luciana Almeida', 'Rua B, 223, Rio de Janeiro', 'Motor'),
(7, 'Felipe Carvalho', 'Rua C, 334, Belo Horizonte', 'Suspensão'),
(8, 'Mariana Silva', 'Rua D, 445, Porto Alegre', 'Transmissão'),
(8, 'Rodrigo Costa', 'Rua E, 556, Curitiba', 'Pintura'),
(8, 'Camila Pereira', 'Rua F, 667, Salvador', 'Freios'),
(9, 'José Antunes', 'Rua G, 778, Recife', 'Motor'),
(9, 'Sara Oliveira', 'Rua H, 889, Brasília', 'Transmissão'),
(9, 'Tatiana Costa', 'Rua I, 990, Manaus', 'Suspensão'),
(9, 'Ricardo Silva', 'Rua J, 111, Florianópolis', 'Elétrica'),
(10, 'Vanessa Santos', 'Rua K, 222, Goiânia', 'Freios');

-- Seeds para veículos
INSERT INTO veiculos (idCliente, idEquipe, tipo, marca, modelo, ano, placa, cor) VALUES
(6, 6, 'Carro', 'Ford', 'Focus', '2021', 'PQR6789', 'Prata'),
(7, 7, 'Carro', 'Toyota', 'Yaris', '2020', 'STU1234', 'Preta'),
(8, 8, 'Carro', 'Renault', 'Clio', '2019', 'VWX5678', 'Branca'),
(9, 9, 'Carro', 'Chevrolet', 'Cruze', '2018', 'XYZ9101', 'Azul'),
(10, 10, 'Moto', 'Yamaha', 'MT-03', '2019', 'ABC4455', 'Vermelha');

-- Seeds para pedidos
INSERT INTO pedidos (idCliente, servico, dataPedido, descricaoPedido) VALUES
(6, 'Revisão', '2025-04-10', 'Revisão elétrica geral'),
(7, 'Conserto', '2025-04-11', 'Troca de pastilhas e correia'),
(8, 'Conserto', '2025-04-12', 'Reparos na pintura'),
(9, 'Revisão', '2025-04-13', 'Revisão completa mecânica e elétrica'),
(10, 'Conserto', '2025-04-14', 'Manutenção dos freios');

-- Seeds para ordensServico
INSERT INTO ordensServico (idPedido, idEquipe, idCliente, dataEmissao, dataConclusao, statusOS, valor) VALUES
(6, 6, 6, '2025-04-10', '2025-04-12', 'Concluída', 250.00), -- 200 (serviço) + 50 (peça)
(7, 7, 7, '2025-04-11', '2025-04-15', 'Concluída', 1000.00), -- 450 (serviço) + 550 (peças)
(8, 8, 8, '2025-04-12', NULL, 'Em execução', 820.00), -- 520 (peça) + 300 (serviço)
(9, 9, 9, '2025-04-13', NULL, 'Em orçamento', 0.00), -- Sem peças ou serviços
(10, 10, 10, '2025-04-14', '2025-04-20', 'Concluída', 1100.00); -- 500 (serviços) + 600 (peças)

-- Seeds para pecas
INSERT INTO pecas (idPeca, peca, valorPeca) VALUES
(6, 'Filtro de óleo', 50.00),
(7, 'Pastilhas de freio premium', 150.00),
(8, 'Correia dentada reforçada', 250.00),
(9, 'Bateria premium', 400.00),
(10, 'Amortecedor reforçado', 520.00);

-- Seeds para osPecas
INSERT INTO osPecas (idOS, idPeca, qtdPecaOS) VALUES
(6, 6, 1), -- Filtro de óleo
(7, 7, 2), -- 2 pastilhas de freio premium
(7, 8, 1), -- 1 correia dentada reforçada
(8, 10, 1), -- 1 amortecedor reforçado
(10, 7, 4); -- 4 pastilhas de freio premium

-- Seeds para refs
INSERT INTO refs (idRef, servico, valorServico) VALUES
(6, 'Troca de filtro premium', 200.00),
(7, 'Revisão detalhada', 450.00),
(8, 'Manutenção avançada', 350.00),
(9, 'Retoque de pintura', 300.00),
(10, 'Troca completa de freios', 250.00);

-- Seeds para osRefs
INSERT INTO osRefs (idOS, idRef, qtdServicoOS) VALUES
(6, 6, 1), -- Troca de filtro premium
(7, 7, 1), -- Revisão detalhada
(8, 9, 1), -- Retoque de pintura
(10, 10, 2); -- 2 trocas completas de freios