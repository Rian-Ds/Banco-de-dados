create database ecommerce;
use ecommerce;

-- Criação da tabela CLIENTE
CREATE TABLE CLIENTE (
    id_cliente INT PRIMARY KEY,
    email VARCHAR(100) NOT NULL UNIQUE,
    data_nascimento DATE NOT NULL,
    data_cadastro DATE NOT NULL,
    sexo CHAR(1) CHECK (sexo IN ('M', 'F'))
);

-- Criação da tabela CONTATO
CREATE TABLE CONTATO (
    id_telefone INT PRIMARY KEY,
    id_cliente INT,
    telefone VARCHAR(15) NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES CLIENTE(id_cliente)
);

-- Criação da tabela ENDERECO
CREATE TABLE ENDERECO (
    id_endereco INT PRIMARY KEY,
    id_cliente INT,
    logradouro VARCHAR(255) NOT NULL,
    cep VARCHAR(10) NOT NULL,
    bairro VARCHAR(100) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    estado CHAR(2) NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES CLIENTE(id_cliente)
);

-- Criação da tabela CATEGORIA
CREATE TABLE CATEGORIA (
    id_categoria INT PRIMARY KEY,
    categoria VARCHAR(100) NOT NULL,
    descricao TEXT
);

-- Criação da tabela PRODUTOS
CREATE TABLE PRODUTOS (
    id_produto INT PRIMARY KEY,
    id_categoria INT,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    quantidade_estoque INT NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES CATEGORIA(id_categoria)
);

-- Criação da tabela PEDIDOS
CREATE TABLE PEDIDOS (
    id_pedido INT PRIMARY KEY,
    id_cliente INT,
    data_pedido DATE NOT NULL,
    status VARCHAR(50) NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES CLIENTE(id_cliente)
);

-- Criação da tabela ITENS_PEDIDO
CREATE TABLE ITENS_PEDIDO (
    id_item INT PRIMARY KEY,
    id_pedido INT,
    id_produto INT,
    quantidade INT NOT NULL,
    valor_unitario DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES PEDIDOS(id_pedido),
    FOREIGN KEY (id_produto) REFERENCES PRODUTOS(id_produto)
);

-- Criação da tabela PAGAMENTO
CREATE TABLE PAGAMENTO (
    id_pagamento INT PRIMARY KEY,
    id_pedido INT,
    data_pagamento DATE NOT NULL,
    metodo_pagamento VARCHAR(50) NOT NULL,
    valor_pago DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES PEDIDOS(id_pedido)
);
