create, que cria uma base de dados ou tabela.
alter, que altera as propriedades da estrutura de um dos componentes do banco. Esse componente pode ser um índice, uma tabela ou até um banco.
truncate apaga de forma definitiva os dados de uma tabela.
drop apaga o componente da estrutura de dados.


insert, que inclui dados dentro de uma tabela.
update, que altera dados de uma tabela já existente.
delete, que apaga os dados de uma tabela.
lock, que gerencia a concorrência de atualização de dados na mesma tabela


commit que salva o estado do banco de dados de forma definitiva no disco.
rollback retorna o estado de um banco de dados relacional a partir de um ponto salvo previamente.
savepoint que salva esse ponto prévio no banco de dados.


CHAR que representa um conjunto de caracteres de tamanho fixo.
O campo do tipo CHAR comporta um limite que vai de 1 até 2000 caracteres.
VARCHAR e VARCHAR2 Ambos são de caracteres de tamanhos variáveis, que podem variar de 1 a 4000 posições.
VARCHAR usa uma tabela ANSI para associar cada caractere, enquanto o VARCHAR2 utiliza uma tabela interna própria da Oracle.


NCHAR, NVARCHAR e NVARCHAR2
NCHAR é tamanho fixo e o NVARCHAR e NVARCHAR2 serão de tamanho variável.
A diferença é que vão usar uma tabela de caracteres interna estendida que engloba quase todos os caracteres do mundo, chamada Unicode.


CLOB e NLOB
Também são campos do tipo texto o CLOB e NLOB, que correspondem, respectivamente, ao VARCHAR2 e NVARCHAR2.
A diferença é que esses dois campos são longos e suportam até 8 terabytes de texto.
Por exemplo, podemos armazenar um livro dentro desses campos.
Existe um outro tipo de campo chamado LONG, o qual não deve ser usado nas versões atuais da Oracle.
O LONG era um campo mais estendido, mas não chegava aos 8 terabytes de tamanho.


NUMBER O número pode ser representado pelo tipo NUMBER como sendo de tamanho fixo ou ponto flutuante.
Além disso, podemos especificar a precisão do número, ou seja, a precisão do arredondamento das casas decimais.
Por exemplo,NUMBER(10,2) é a representação de um número que possui 10 dígitos, sendo 2 dígitos após a casa decimal.


7.456.123.89	NUMBER	7456123.89
7.456.123.89	NUMBER(*,1)	7456123.9
7.456.123.89	NUMBER(9)	7456124
7.456.123.89	NUMBER(9,2)	7456123.89
7.456.123.89	NUMBER(9,1)	7456123.9
7.456.123.89	NUMBER(6)	(não aceito, excede a precisão)
7.456.123.89	NUMBER(7,-2)	7456100


INTEGER, SHORTINTEGER e LONGINTEGER
INTEGER, que é um número inteiro entre os limites de -2 X 10E31 e 2 X 10E31-1.
SHORINTEGER é um número inteiro menor. O espectro de valor desse número é de -2 X 10E15 e 2 X 10E15-1.
LONGINTEGER, que é um espectro maior.


DATE usando o calendário Juliano, que é o calendário ocidental usado por nós.
DATE também utiliza hora, minuto e segundo (00:00:00 AM) na sua representação. 
Mas só será exibida a hora da data quando determinamos esse formato no campo.


TIMESTAMP, TIMESTAMP WITH TIME ZONE e TIMESTAMP WITH LOCAL TIME ZONE
Além de representarem o segundo, os TIMESTAMPS também representam o milésimo de segundo. 
Ou seja, dão uma precisão maior na representação da hora se comparado ao tipo DATE.
Existem alguns tipos de TIMESTAMPS que consideram os fusos horários ou um fuso horário padrão em relação às outras datas colocadas.


Tipos de dados	                Fuso horário	Segundos fracionários
DATE	                            Não	                Não
TIMESTAMP	                        Não	                Sim
TIMESTAMP WITH TIME ZONE	        Explícito	        Sim
TIMESTAMP WITH LOCAL TIME ZONE	    Relativo	        Sim

