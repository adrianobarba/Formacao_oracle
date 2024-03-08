tabela de clientes:
 
CPF do cliente;
Nome completo;
Endereço (rua, bairro, cidade, estado e CEP);
Data de nascimento;
Idade;
Gênero;
Limite de crédito para comprar produtos;
Volume mínimo que pode comprar;
Se já realizou a primeira compra.


CREATE TABLE TB_CLIENTES (
CPF VARCHAR2(11),
NOME VARCHAR2(100),
ENDERECO1 VARCHAR2(150),
ENDERECO2 VARCHAR2(150),
BAIRRO VARCHAR2(50),
CIDADE VARCHAR2(50),
ESTADO VARCHAR2(2),
CEP VARCHAR2(8),
DATA_NASCIMENTO DATE,
IDADE INTEGER,
SEXO VARCHAR2(1),
LIMITE_CREDITO NUMBER(15,2),
PRIMEIRA_COMPRA NUMBER(1)
);
select * from TB_CLIENTES;


CREATE TABLE TB_VENDEDORES (
     MATRICULA varchar(5),
     NOME varchar(100),
     DATA_ADMISSAO date,
     PERCENTUAL_COMISSAO number
);
select * from TB_VENDEDORES;


Criando uma tabela com o assistente
Para usar o assistente de criação, vamos na aba "Conexões" e clicamos com o botão direito do mouse sobre "Tabelas (Filtrado) > Nova Tabela".
"Criar tabela" que usaremos para criar a nova tabela.
Primeiramente, mantemos o campo "Esquema" como "SYSTEM". Em seguida, no campo "Nome" escrevemos TB_PRODUTOS para nomear a tabela.
Logo abaixo, na aba "tabela", vamos colocar as informações dos campos da tabela.

Nome	        Tipo de Dados	Tamanho
PRODUTO	            VARCHAR2	20
NOME	            VARCHAR2	150
EMBALAGEM	        VARCHAR2	50
TAMANHO	            VARCHAR2	50
SABOR	            VARCHAR2	50
PRECO_LISTA	        NUMBER

COLUMN_NAME	    DATA_TYPE	       NULLABLE	   DATA_DEFAULT	 COLUMN_ID	COMMENTS
1PRODUTO	    VARCHAR2 (20 BYTE)	Yes	        (null)	        1	    (null)
2NOME	        VARCHAR2 (15 BYTE)	Yes	        (null)	        2	    (null)
3EMBALAGEM	    VARCHAR2 (50 BYTE)	Yes	        (null)	        3	    (null)
4TAMANHO	    VARCHAR2 (50 BYTE)	Yes	        (null)	        4	    (null)
5SABOR	        VARCHAR2 (50 BYTE)	Yes	        (null)	        5	    (null)
6PRECO_LISTA	NUMBER	            Yes	        (null)	        6	    (null)



CREATE TABLE TB_CLIENTES2 (
CPF VARCHAR2(11),
NOME VARCHAR2(100),
ENDERECO1 VARCHAR2(150),
ENDERECO2 VARCHAR2(150),
BAIRRO VARCHAR2(50),
CIDADE VARCHAR2(50),
ESTADO VARCHAR2(2),
CEP VARCHAR2(8),
DATA_NASCIMENTO DATE,
IDADE INTEGER,
SEXO VARCHAR2(1),
LIMITE_CREDITO NUMBER(15,2),
PRIMEIRA_COMPRA NUMBER(1)
);

SELECT * FROM TB_CLIENTES2;

CREATE TABLE TB_CLIENTES3 (
CPF VARCHAR2(11),
NOME VARCHAR2(100),
ENDERECO1 VARCHAR2(150),
ENDERECO2 VARCHAR2(150),
BAIRRO VARCHAR2(50),
CIDADE VARCHAR2(50),
ESTADO VARCHAR2(2),
CEP VARCHAR2(8),
DATA_NASCIMENTO DATE,
IDADE INTEGER,
SEXO VARCHAR2(1),
LIMITE_CREDITO NUMBER(15,2),
PRIMEIRA_COMPRA NUMBER(1)
);
SELECT * FROM TB_CLIENTES3;

DROP TABLE TB_CLIENTES3;
