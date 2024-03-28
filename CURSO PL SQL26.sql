EXECUTE incluir_cliente(9, 'MERCADO S�O JO�O', '45623', 1, 120000);

SELECT * FROM CLIENTE;

SET SERVEROUTPUT ON
DECLARE
    CURSOR cur_CLIENTE IS SELECT ID, RAZAO_SOCIAL FROM CLIENTE;
    v_ID CLIENTE.ID%type;
    v_RAZAO_SOCIAL CLIENTE.RAZAO_SOCIAL%type;
BEGIN
    OPEN cur_CLIENTE;
    LOOP
        FETCH cur_CLIENTE INTO v_ID, v_RAZAO_SOCIAL;
    EXIT WHEN cur_CLIENTE%NOTFOUND;
        dbms_output.put_line('ID = ' || v_ID);
         dbms_output.put_line('Raz�o Social = ' || v_RAZAO_SOCIAL);
    END LOOP;
    CLOSE cur_CLIENTE;
END;    