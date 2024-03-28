--COMANDO UPPER 

DECLARE
    v_ID SEGMERCADO.ID%type := 2;
    v_DESCRICAO SEGMERCADO.DESCRICAO%type := 'Atacado';
BEGIN
    INSERT INTO segmercado (ID, DESCRICAO) VALUES (v_ID, upper(v_DESCRICAO));
    COMMIT;
END;

SELECT * FROM segmercado;

SELECT * FROM segmercado WHERE descricao = 'Atacado';
SELECT * FROM segmercado WHERE descricao = 'atacado';

DELETE FROM segmercado WHERE descricao = 'Atacado';

SELECT * FROM segmercado WHERE descricao = 'ATACADO';


