--Loop

EXECUTE atualizar_cli_seg_mercado(1, 2);
EXECUTE atualizar_cli_seg_mercado(2, 2);
EXECUTE atualizar_cli_seg_mercado(3, 2);
EXECUTE atualizar_cli_seg_mercado(4, 2);
EXECUTE atualizar_cli_seg_mercado(5, 2);
EXECUTE atualizar_cli_seg_mercado(6, 2);

SELECT * FROM CLIENTE;

DECLARE
    v_SEGMERCADO_ID CLIENTE.SEGMERCADO_ID%type := 1;
    v_I NUMBER(3) := 1;
BEGIN
    LOOP
        atualizar_cli_seg_mercado(v_I, v_SEGMERCADO_ID);
        v_I := v_I + 1;
    EXIT WHEN v_I > 6;
    END LOOP;
END;