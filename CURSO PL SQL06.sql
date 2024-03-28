--Percent type Se houver mudanças na estrutura do banco de dados, o nosso programa não apresentará problemas

DECLARE
    --v_ID NUMBER(5) := 1;
    --v_DESCRICAO VARCHAR2(100) := 'Varejo';
    v_ID SEGMERCADO.ID%type := 2;
    v_DESCRICAO SEGMERCADO.DESCRICAO%type := 'Atacado';
BEGIN
    INSERT INTO segmercado (ID, DESCRICAO) VALUES (v_ID, v_DESCRICAO);
    COMMIT;
END;

SELECT * FROM segmercado;