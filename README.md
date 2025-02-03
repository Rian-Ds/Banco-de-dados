# Banco-de-dados
Projeto que visa todas as etapas para criação e implementação de um banco de dados simples


PROJETO – BANCO DE DADOS – E-COMMERCE

1. Visão Geral da Empresa
A empresa "FashionStyle" é uma plataforma online de e-commerce especializada na venda de roupas e acessórios. A empresa tem como foco oferecer uma experiência de compra personalizada e eficiente, além de otimização do processo de gestão de inventário e transações financeiras.

2. Objetivos do Banco de Dados
•	Gerenciamento de Clientes: Armazenar dados sobre os clientes, incluindo preferências, histórico de compras e comportamento.
•	Gestão de Inventário: Controlar o estoque de produtos, categorias e preços.
•	Processamento de Pedidos: Registrador de todos os detalhes dos pedidos realizados pelos clientes.
•	Gestão de Transações: Armazenar transações financeiras e históricas de pagamento.
•	Relatórios e Análises: Fornece uma base para geração de relatórios de vendas, previsões de produtos e dados financeiros.

Requisitos Funcionais do Banco de Dados
1. Gerenciamento de Clientes
O sistema deve ser capaz de armazenar informações sobre cada cliente da empresa, como nome, email, telefone, endereço de entrega, data de nascimento, entre outros dados relevantes. Para isso, deve ser criada uma tabela que mantenha o registro dos clientes de forma única, identificado por um ID único (ClienteID).
Além disso, o sistema precisa registrar os dados de cadastro de cada cliente e permitir consultas baseadas em dados como nome, email e gênero para facilitar a segmentação e análise de clientes.
2. Gestão de Produtos
Deve ser possível registrar os produtos disponíveis para venda, com informações como nome, categoria (ex.: camisetas, calças), preço, quantidade em estoque e descrição. Para isso, será necessário criar uma tabela de produtos, onde cada produto terá um identificador único (ProdutoID).
Essa tabela deve permitir a fácil atualização de dados, como preço e estoque, conforme a necessidade.
3. Processamento de Pedidos
Cada vez que um cliente realiza um pedido, o sistema precisa registrar esse pedido em uma tabela de pedidos. A tabela deve armazenar o ID do cliente (ClienteID), os dados do pedido, o valor total do pedido e o status (ex.: pendente, enviado, entregue).
Além disso, deve ser possível registrar vários itens para cada pedido, com detalhes como o ID do produto, quantidade e preço unitário no momento da compra.
4. Gestão de Transações Financeiras
Cada pedido realizado será registrado uma transação financeira que inclui dados como o método de pagamento (ex.: cartão de crédito, boleto), o valor de pagamento e os dados da transação. O sistema precisa garantir que as transações sejam vinculadas ao pedido correspondente para um controle financeiro eficiente.
Esses requisitos devem ser detalhados de acordo com a necessidade da empresa e ajustados conforme a evolução do sistema. O importante é que o banco de dados permita uma gestão eficiente de clientes, produtos, pedidos e transações de forma integrada.
