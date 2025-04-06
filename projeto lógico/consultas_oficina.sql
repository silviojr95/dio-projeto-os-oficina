-- Consultas SQL de acordo com os requisitos nas diretrizes do desafio:

-- 1. Recuperações simples com SELECT Statement;
-- 2. Filtros com WHERE Statement;
-- 3. Crie expressões para gerar atributos derivados;
-- 4. Defina ordenações dos dados com ORDER BY;
-- 5. Condições de filtros aos grupos – HAVING Statement;
-- 6. Crie junções entre tabelas para fornecer uma perspectiva mais complexa dos dados;

-- Pergunta: Quais são os veículos cadastrados no sistema, e seus respectivos proprietários?
-- Requisitos cumpridos na query de resposta: SELECT (1) e JOIN (6)
select	
	v.idVeiculo as 'ID do veículo',
    v.tipo as Tipo,
    v.marca as Marca,
    v.modelo as Modelo,
    v.ano as Ano,
    c.nomeCompleto as 'Proprietário(a)'
from veiculos v
join clientes c on v.idCliente = c.idCliente;

-- Pergunta: Quais mecânicos fazem parte de uma equipe que está ocupada?
-- Requisitos cumpridos na query de resposta: SELECT (1), WHERE (2) e JOIN (6)
select
	m.idMecanico as 'ID do mecânico',
    m.nomeCompleto as Mecânico,
    e.idEquipe as Equipe
from mecanicos m
join equipes e on m.idEquipe = e.idEquipe
where e.statusEquipe = 'Ocupada';

-- Para validação do resultado na query acima
select * 
from equipes e
join ordensServico os on e.idEquipe = os.idEquipe;

-- Quantos carros e motos estão cadastrados na oficina?
-- Requisitos cumpridos na query de resposta: SELECT (1), ORDER BY (4), HAVING (5) e JOIN (6)
select 
	v.tipo as Tipo,
    COUNT(v.tipo) as Quantidade
from veiculos v
group by v.tipo
having v.tipo = 'Moto' or v.tipo = 'Carro'
order by v.tipo;

-- Qual foi a duração (em dias) de cada ordem de serviço concluída?
-- Requisitos cumpridos na query de resposta: SELECT (1), WHERE (2), Criação de expressões (3) e ORDER BY (4)
select 
	os.idOS 'ID da Ordem de Serviço',
    os.statusOS as 'Status',
    os.dataEmissao as 'Início',
    os.dataConclusao as 'Conclusão',
    datediff(os.dataConclusao, os.dataEmissao) +1 as Dias
from ordensServico os
where os.statusOS = 'Concluída'
order by Dias;