--LOOP COM FOR

SELECT * FROM CLIENTE;

DECLARE
    v_SEGMERCADO_ID CLIENTE.SEGMERCADO_ID%type:= 3;
BEGIN
    FOR v_ID IN 1..6 LOOP
        atualizar_cli_seg_mercado(v_ID, v_SEGMERCADO_ID);
    END LOOP;
END;    

--Dessa forma n�o precisa saber a ordem (parametro nomeado)
DECLARE
    v_SEGMERCADO_ID CLIENTE.SEGMERCADO_ID%type:= 2;
BEGIN
    FOR v_ID IN 1..6 LOOP
        atualizar_cli_seg_mercado(p_SEGMERCADO_ID => v_SEGMERCADO_ID, p_ID => v_ID );
    END LOOP;
END;   