--
-- Arquivo gerado com SQLiteStudio v3.4.17 em sáb nov 29 15:43:04 2025
--
-- Codificação de texto usada: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Tabela: cliente
CREATE TABLE IF NOT EXISTS cliente (
    cliente_id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    cpf TEXT UNIQUE NOT NULL,
    telefone TEXT,
    email TEXT
);

-- Tabela: fornecedor
CREATE TABLE IF NOT EXISTS fornecedor (
    fornecedor_id INTEGER PRIMARY KEY,
    cnpj TEXT UNIQUE NOT NULL,
    razao_social TEXT NOT NULL,
    contato TEXT,
    telefone TEXT,
    email TEXT
);

-- Tabela: item_reposicao
CREATE TABLE IF NOT EXISTS item_reposicao (
    item_reposicao_id INTEGER PRIMARY KEY,
    reposicao_id INTEGER NOT NULL,
    produto_id INTEGER NOT NULL,
    quantidade INTEGER NOT NULL,
    preco_unitario REAL,
    FOREIGN KEY (reposicao_id) REFERENCES reposicao(reposicao_id),
    FOREIGN KEY (produto_id) REFERENCES produto(produto_id)
);

-- Tabela: item_venda
CREATE TABLE IF NOT EXISTS item_venda (
    item_venda_id INTEGER PRIMARY KEY,
    venda_id INTEGER NOT NULL,
    produto_id INTEGER NOT NULL,
    quantidade INTEGER NOT NULL,
    preco_unitario REAL,
    subtotal REAL,
    FOREIGN KEY (venda_id) REFERENCES venda(venda_id),
    FOREIGN KEY (produto_id) REFERENCES produto(produto_id)
);

-- Tabela: produto
CREATE TABLE IF NOT EXISTS produto (
    produto_id INTEGER PRIMARY KEY,
    codigo TEXT UNIQUE,
    descricao TEXT NOT NULL,
    categoria TEXT,
    preco REAL,
    quantidade_estoque INTEGER
);

-- Tabela: reposicao
CREATE TABLE IF NOT EXISTS reposicao (
    reposicao_id INTEGER PRIMARY KEY,
    fornecedor_id INTEGER NOT NULL,
    data_reposicao TEXT NOT NULL,
    valor_total REAL,
    FOREIGN KEY (fornecedor_id) REFERENCES fornecedor(fornecedor_id)
);

-- Tabela: venda
CREATE TABLE IF NOT EXISTS venda (
    venda_id INTEGER PRIMARY KEY,
    data_venda TEXT NOT NULL,
    cliente_id INTEGER NOT NULL,
    forma_pagamento TEXT,
    valor_total REAL,
    nota_fiscal_emitida INTEGER,
    FOREIGN KEY (cliente_id) REFERENCES cliente(cliente_id)
);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
