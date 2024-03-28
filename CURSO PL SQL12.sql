

CREATE OR REPLACE PROCEDURE incluir_segmercado
       (p_ID IN SEGMERCADO.ID%type, p_DESCRICAO IN SEGMERCADO.DESCRICAO%type) 
      IS
      BEGIN
          INSERT INTO segmercado (ID, DESCRICAO) VALUES (p_ID, upper(p_DESCRICAO));
          COMMIT;
      END;