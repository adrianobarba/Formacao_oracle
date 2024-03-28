
EXECUTE incluir_cliente(1, 'FARMACIA BBJ', '25900',1, 400);
EXECUTE incluir_cliente(3, 'HOTEL FAZENDA', '36987',1, 23000);
EXECUTE incluir_cliente(4, 'RESTAURANTE BOI', '26987',1, 13300);
EXECUTE incluir_cliente(5, 'PADARIA GOSTO', '30087',1, 666000);
EXECUTE incluir_cliente(6, 'ACADEMIA VILA', '93987',1, 1000);

SELECT * FROM CLIENTE ORDER BY ID;


CREATE OR REPLACE PROCEDURE atualizar_cli_seg_mercado
    (p_ID CLIENTE.ID%type, p_SEGMERCADO_ID CLIENTE.SEGMERCADO_ID%type)
IS
BEGIN
    UPDATE CLIENTE SET SEGMERCADO_ID = p_SEGMERCADO_ID
    WHERE ID = p_ID;
    COMMIT;
END;
      
EXECUTE atualizar_cli_seg_mercado(3, 2);
