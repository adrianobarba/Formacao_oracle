-- Inserindo dados na tabela

INSERT INTO segmercado (ID, DESCRICAO) VALUES (1, 'Varejo');

SELECT * FROM segmercado;

DELETE FROM segmercado;


DECLARE
    v_ID NUMBER(5) := 1;
    v_DESCRICAO VARCHAR2(100) := 'Varejo';
BEGIN
    INSERT INTO segmercado (ID, DESCRICAO) VALUES (v_ID, v_DESCRICAO);
    COMMIT;
END;