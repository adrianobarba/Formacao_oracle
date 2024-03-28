--Bloco plsql

SET SERVEROUTPUT ON; -- serve para executar bibliotecas dbms_output

DECLARE
    v_ID NUMBER(5) := 1; 
BEGIN
    v_ID := 2;
    dbms_output.put_line(v_ID);  
END;    
