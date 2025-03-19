# 📦 Esquema Conceitual de OS para Oficina Mecânica - Bootcamp DIO

Este repositório contém um esquema conceitual para um sistema de OS para Oficina Mecânica, modelado no MySQL Workbench, como parte do desafio proposto pelo bootcamp da Digital Innovation One (DIO). 
O objetivo deste projeto é fornecer um modelo inicial para sistemas gestão de OS para oficinas mecânicas, considerando entidades essenciais e seus relacionamentos.

## 📌 Sobre o Projeto

O esquema conceitual define a estrutura de um banco de dados para um sistema de gestão de OS para oficinas mecânicas, seguindo as instruções:
- Clientes levam veículos à oficina mecânica para serem consertados ou para passarem por revisões  periódicas
- Cada veículo é designado a uma equipe de mecânicos que identifica os serviços a serem executados e preenche uma OS com data de entrega.
- A partir da OS, calcula-se o valor de cada serviço, consultando-se uma tabela de referência de mão-de-obra
- O valor de cada peça também irá compor a OSO cliente autoriza a execução dos serviços
- A mesma equipe avalia e executa os serviços
- Os mecânicos possuem código, nome, endereço e especialidade
- Cada OS possui: n°, data de emissão, um valor, status e uma data para conclusão dos trabalhos.

## 🛠 Tecnologias Utilizadas
- **MySQL Workbench** - Ferramenta utilizada para modelagem do banco de dados.
- **MySQL** - Banco de dados relacional para armazenamento das informações.

## 🚀 Como Usar
1. Clone o repositório:
   ```sh
   git clone https://github.com/silviojr95/dio-projeto-os-oficina.git
2. Abra o arquivo do esquema no MySQL Workbench.
3. Analise e modifique conforme necessário para seu projeto.

## 🤝 Contribuições
Sugestões e melhorias são bem-vindas! Fique à vontade para abrir uma issue ou enviar um pull request.

## 📧 Contato
Caso tenha alguma dúvida, entre em contato comigo pelo [LinkedIn](https://www.linkedin.com/in/sjuniormidia/)
