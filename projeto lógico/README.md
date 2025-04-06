# Projeto lógico de OS para Oficina Mecânica - Bootcamp DIO

## 📄 Descrição do Projeto
Este projeto foi desenvolvido para modelar e implementar um banco de dados relacional para a gestão de OS em uma oficina mecânica. O objetivo é oferecer uma solução que facilite o cadastro de clientes, veículos, pedidos e ordens de serviço, garantindo integridade, consistência e suporte a consultas avançadas para análise e tomada de decisão.

## 🗂 Estrutura do Repositório
O repositório contém os seguintes arquivos:

1. **schema_oficina.sql**:
   - Contém o script SQL para criação do esquema do banco de dados.
   - Define tabelas como `clientes`, `veiculos`, `equipes`, `mecanicos`, `ordensServico`, entre outras.
   - Configura chaves primárias, estrangeiras e constraints de integridade.

2. **seeds_oficina.sql**:
   - Popula o banco de dados com dados fictícios para testes.
   - Inclui registros iniciais para:
     - Clientes e seus veículos.
     - Equipes e mecânicos.
     - Pedidos, ordens de serviço, peças e referências de serviços.

3. **consultas_oficina.sql**:
   - Contém um conjunto de queries SQL para explorar e analisar os dados do banco.
   - Exemplos de queries:
     - Recuperação de informações de clientes e veículos.
     - Filtragem de ordens de serviço por status e duração.
     - Cálculos derivados, como duração das OS concluídas.
     - Uso de junções entre tabelas para consultas avançadas.

## ⚙️ Requisitos para Execução
Antes de executar o projeto, você precisará de:
- **MySQL** ou outro sistema de banco de dados compatível.
- Um cliente SQL, como MySQL Workbench ou DBeaver.

## 🚀 Passo a Passo para Utilização
1. **Criação do Banco de Dados e Esquema**:
   - Execute o arquivo `schema_oficina.sql` para criar o banco de dados e as tabelas.

2. **Inserção de Dados**:
   - Execute o arquivo `seeds_oficina.sql` para popular o banco com dados fictícios.

3. **Consultas e Análise**:
   - Utilize o arquivo `consultas_oficina.sql` para explorar e analisar os dados inseridos.

## 🛠 Funcionalidades Implementadas
- **Gerenciamento de Clientes e Veículos**:
  - Cadastro de clientes físicos e seus veículos.
- **Gestão de Equipes e Mecânicos**:
  - Associação de equipes a ordens de serviço e mecânicos responsáveis.
- **Pedidos e Ordens de Serviço**:
  - Registro e acompanhamento de status e valores das ordens de serviço.
- **Controle de Peças e Serviços**:
  - Detalhamento das peças utilizadas e serviços realizados em cada OS.

## 📊 Exemplos de Consultas SQL
- Consultar a duração (em dias) de ordens de serviço concluídas:
```sql
SELECT 
    os.idOS,
    os.statusOS,
    os.dataEmissao AS 'Início',
    os.dataConclusao AS 'Conclusão',
    DATEDIFF(os.dataConclusao, os.dataEmissao) AS 'Duração (em dias)'
FROM ordensServico os
WHERE os.statusOS = 'Concluída';

- Listar equipes com status e número de mecânicos:
```sql
SELECT 
    e.idEquipe,
    e.statusEquipe,
    e.tamanhoEquipe,
    COUNT(m.idMecanico) AS 'Número de Mecânicos'
FROM equipes e
LEFT JOIN mecanicos m ON e.idEquipe = m.idEquipe
GROUP BY e.idEquipe, e.statusEquipe, e.tamanhoEquipe;

- Filtrar veículos do tipo "Carro":
```sql
SELECT 
    v.placa, 
    v.marca, 
    v.modelo, 
    c.nomeCompleto AS 'Proprietário'
FROM veiculos v
INNER JOIN clientes c ON v.idCliente = c.idCliente
WHERE v.tipo = 'Carro';

##📌 Considerações Finais
Este projeto foi elaborado para consolidar conhecimentos em modelagem e implementação de bancos de dados relacionais. A estrutura do banco foi pensada para ser robusta e flexível, permitindo facilmente novos módulos ou expansão no futuro.