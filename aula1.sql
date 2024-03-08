create, que cria uma base de dados ou tabela.
alter, que altera as propriedades da estrutura de um dos componentes do banco. Esse componente pode ser um �ndice, uma tabela ou at� um banco.
truncate apaga de forma definitiva os dados de uma tabela.
drop apaga o componente da estrutura de dados.


insert, que inclui dados dentro de uma tabela.
update, que altera dados de uma tabela j� existente.
delete, que apaga os dados de uma tabela.
lock, que gerencia a concorr�ncia de atualiza��o de dados na mesma tabela


commit que salva o estado do banco de dados de forma definitiva no disco.
rollback retorna o estado de um banco de dados relacional a partir de um ponto salvo previamente.
savepoint que salva esse ponto pr�vio no banco de dados.


CHAR que representa um conjunto de caracteres de tamanho fixo.
O campo do tipo CHAR comporta um limite que vai de 1 at� 2000 caracteres.
VARCHAR e VARCHAR2 Ambos s�o de caracteres de tamanhos vari�veis, que podem variar de 1 a 4000 posi��es.
VARCHAR usa uma tabela ANSI para associar cada caractere, enquanto o VARCHAR2 utiliza uma tabela interna pr�pria da Oracle.


NCHAR, NVARCHAR e NVARCHAR2
NCHAR � tamanho fixo e o NVARCHAR e NVARCHAR2 ser�o de tamanho vari�vel.
A diferen�a � que v�o usar uma tabela de caracteres interna estendida que engloba quase todos os caracteres do mundo, chamada Unicode.


CLOB e NLOB
Tamb�m s�o campos do tipo texto o CLOB e NLOB, que correspondem, respectivamente, ao VARCHAR2 e NVARCHAR2.
A diferen�a � que esses dois campos s�o longos e suportam at� 8 terabytes de texto.
Por exemplo, podemos armazenar um livro dentro desses campos.
Existe um outro tipo de campo chamado LONG, o qual n�o deve ser usado nas vers�es atuais da Oracle.
O LONG era um campo mais estendido, mas n�o chegava aos 8 terabytes de tamanho.


NUMBER O n�mero pode ser representado pelo tipo NUMBER como sendo de tamanho fixo ou ponto flutuante.
Al�m disso, podemos especificar a precis�o do n�mero, ou seja, a precis�o do arredondamento das casas decimais.
Por exemplo,NUMBER(10,2) � a representa��o de um n�mero que possui 10 d�gitos, sendo 2 d�gitos ap�s a casa decimal.


7.456.123.89	NUMBER	7456123.89
7.456.123.89	NUMBER(*,1)	7456123.9
7.456.123.89	NUMBER(9)	7456124
7.456.123.89	NUMBER(9,2)	7456123.89
7.456.123.89	NUMBER(9,1)	7456123.9
7.456.123.89	NUMBER(6)	(n�o aceito, excede a precis�o)
7.456.123.89	NUMBER(7,-2)	7456100


INTEGER, SHORTINTEGER e LONGINTEGER
INTEGER, que � um n�mero inteiro entre os limites de -2 X 10E31 e 2 X 10E31-1.
SHORINTEGER � um n�mero inteiro menor. O espectro de valor desse n�mero � de -2 X 10E15 e 2 X 10E15-1.
LONGINTEGER, que � um espectro maior.


DATE usando o calend�rio Juliano, que � o calend�rio ocidental usado por n�s.
DATE tamb�m utiliza hora, minuto e segundo (00:00:00 AM) na sua representa��o. 
Mas s� ser� exibida a hora da data quando determinamos esse formato no campo.


TIMESTAMP, TIMESTAMP WITH TIME ZONE e TIMESTAMP WITH LOCAL TIME ZONE
Al�m de representarem o segundo, os TIMESTAMPS tamb�m representam o mil�simo de segundo. 
Ou seja, d�o uma precis�o maior na representa��o da hora se comparado ao tipo DATE.
Existem alguns tipos de TIMESTAMPS que consideram os fusos hor�rios ou um fuso hor�rio padr�o em rela��o �s outras datas colocadas.


Tipos de dados	                Fuso hor�rio	Segundos fracion�rios
DATE	                            N�o	                N�o
TIMESTAMP	                        N�o	                Sim
TIMESTAMP WITH TIME ZONE	        Expl�cito	        Sim
TIMESTAMP WITH LOCAL TIME ZONE	    Relativo	        Sim

