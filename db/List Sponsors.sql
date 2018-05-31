SELECT
    pat."nombre",
    pat."apellidos",
    pat."nombre_organizacion",
    pat."email",
    a."nombre" AS "atleta_nombre",
    a."apellidos" AS "atleta_apellidos",
    paq."deporte"
  FROM "PATROCINADOR" pat
  INNER JOIN "ATLETA" a
    ON a."id_patrocinador"=pat."id"
  INNER JOIN "PAQUETE" paq
    ON a."id_paquete"=paq."id"
  WHERE a."retirado"=false;
