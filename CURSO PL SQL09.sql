DECLARE
    v_ID SEGMERCADO.ID%type := 3;
    v_DESCRICAO SEGMERCADO.DESCRICAO%type := 'Esportistas';
BEGIN
    INSERT INTO segmercado(ID, DESCRICAO)  VALUES (v_ID, upper(v_DESCRICAO));
    COMMIT;
END;

SELECT * FROM segmercado;