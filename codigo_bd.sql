CREATE DATABASE IF NOT EXISTS tarefa;

USE tarefa;

CREATE TABLE IF NOT EXISTS clientes (
    cliente_id INT(11) AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    fone VARCHAR(15) NOT NULL,
    data_criacao DATETIME NOT NULL,
    data_atualizacao DATETIME NOT NULL
);

CREATE TABLE IF NOT EXISTS categorias (
    categoria_id INT(11) AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_criacao DATETIME NOT NULL,
    data_atualizacao DATETIME NOT NULL
);

CREATE TABLE IF NOT EXISTS produtos (
    produto_id INT(11) AUTO_INCREMENT PRIMARY KEY,
    codigo_barra VARCHAR(13) NOT NULL,
    descricao VARCHAR(100) NOT NULL,
    estoque DECIMAL(10, 3) NOT NULL,
    estoque_min DECIMAL(10, 3) NOT NULL,
    preco_unitario DECIMAL(10, 2) NOT NULL,
    categoria_id INT(11) NOT NULL,
    data_criacao DATETIME NOT NULL,
    data_atualizacao DATETIME NOT NULL,
    FOREIGN KEY (categoria_id) REFERENCES categorias(categoria_id)
);

CREATE TABLE IF NOT EXISTS vendas (
    venda_id INT(11) AUTO_INCREMENT PRIMARY KEY,
    data_venda DATETIME NOT NULL,
    valor_total DECIMAL(10, 2) NOT NULL,
    status_venda CHAR(1) NOT NULL,
    cliente_id INT(11) NOT NULL,
    data_criacao DATETIME NOT NULL,
    data_atualizacao DATETIME NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id)
);

CREATE TABLE IF NOT EXISTS itens_vendas (
    itens_id INT(11) AUTO_INCREMENT PRIMARY KEY,
    qtde_venda DECIMAL(10, 3) NOT NULL,
    valor_venda DECIMAL(10, 2) NOT NULL,
    venda_id INT(11) NOT NULL,
    produto_id INT(11) NOT NULL,
    data_criacao DATETIME NOT NULL,
    data_atualizacao DATETIME NOT NULL,
    FOREIGN KEY (venda_id) REFERENCES vendas(venda_id),
    FOREIGN KEY (produto_id) REFERENCES produtos(produto_id)
);