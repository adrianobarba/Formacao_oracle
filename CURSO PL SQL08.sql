
DECLARE
    v_ID SEGMERCADO.ID%type := 2;
    v_DESCRICAO SEGMERCADO.DESCRICAO%type := 'Atacadistas';
BEGIN
    UPDATE segmercado SET descricao = upper(v_DESCRICAO) WHERE ID = v_ID;
    v_ID := 1;
    v_DESCRICAO := 'Varejistas';
    UPDATE segmercado SET descricao = upper(v_DESCRICAO) WHERE ID = v_ID;
    COMMIT;
END;

SELECT * FROM segmercado;