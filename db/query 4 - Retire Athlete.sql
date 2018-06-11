UPDATE "ATLETA" a
  SET "retirado"=TRUE
    WHERE a."cedula"='789123456'; --Change cedula here

SELECT *
  FROM "ATLETA" a
    WHERE a."retirado"=true;
