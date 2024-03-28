--Procedures

CREATE PROCEDURE incluir_segmercado
       (p_ID IN NUMBER, p_DESCRICAO IN VARCHAR2) 
      IS
      BEGIN
          INSERT INTO segmercado (ID, DESCRICAO) VALUES (p_ID, upper(p_DESCRICAO));
          COMMIT;
      END;
      
EXECUTE INCLUIR_SEGMERCADO(3, 'Farmaceuticos');

SELECT * FROM segmercado;

BEGIN
    incluir_segmercado(4, 'Industrial');
END;    

SELECT * FROM segmercado;
      


