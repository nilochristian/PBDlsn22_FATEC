/*
Funcionarios(Codigo, PrimeiroNome, SegundoNome, UltimoNome,DtNasc,CPF,RG,Endereco,CEP,Cidade,Fone,CodigoDepartamento,Funcao,Salario)
Departamentos(Codigo,Nome,Localizacao,CodigoFuncionarioGerente)

Listar nome e sobrenome, ordenando por sobrenome
Listar todos os campos de funcionarios ordenados por cidade
Listar os funcionarios que tem salario superior a R$1000,00 ordenados por nome completo.
Listar a data de nascimento e o primeiro nome dos funcionarios ordenados do mais novo para o mais velho.
Listar os funcionarios como uma listagem telefonica.
*/

CREATE TABLE FUNCIONARIOS(
    PK_FUNC INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    FIRST_NAME VARCHAR(20),
    SECOND_NAME VARCHAR(10),
    LAST_NAME VARCHAR(10),
    DT_NASC DATE,
    ENDERECO VARCHAR(40),
    CEP INT(8),
    CIDADE VARCHAR(20),
    FONE INT(11),
    FUNCAO VARCHAR(20),
    SALARIO MONEY
    CONSTRAINT FK_DEP FOREIGN KEY (PK_DEP) REFERENCES DEPARTAMENTOS
)

CREATE TABLE DEPARTAMENTOS(
    PK_DEP INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    DEP_NAME VARCHAR(40),
    LOCALIZACAO VARCHAR(40),
    CONSTRAINT FK_FUNC FOREIGN KEY (PK_FUNC) REFERENCES FUNCIONARIOS
)

SELECT FIRST_NAME, LAST_NAME FROM FUNCIONARIOS ORDER BY LAST_NAME
SELECT * FROM FUNCIONARIOS ORDER BY CIDADE
SELECT * FROM FUNCIONARIOS IF SALARIO > 1000
SELECT FIRST_NAME, DT_NASC FROM FUNCIONARIOS ORDER BY DT_NASC DESC
SELECT FIRST_NAME, SECOND_NAME, LAST_NAME, FONE FROM FUNCIONARIOS ORDER BY FIRST_NAME, SECOND_NAME, LAST_NAME 