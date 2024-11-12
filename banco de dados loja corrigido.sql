CREATE DATABASE loja;
USE loja;

CREATE TABLE tbl_funcionario (
    fun_codigo INT PRIMARY KEY AUTO_INCREMENT,
    fun_nome VARCHAR(255),
    fun_cargo VARCHAR(255)
);

CREATE TABLE tbl_registros (
    reg_codigo INT PRIMARY KEY AUTO_INCREMENT,
    reg_data DATE,
    reg_hora TIME,
    fun_codigo INT,
    CONSTRAINT fk_fun_codigo FOREIGN KEY (fun_codigo) REFERENCES tbl_funcionario (fun_codigo)
);
