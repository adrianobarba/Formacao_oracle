DECLARE
    v_ID SEGMERCADO.ID%type := 3;
BEGIN
    DELETE FROM segmercado WHERE id = v_ID;
    COMMIT;
END;

SELECT * FROM segmercado;