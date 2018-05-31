SELECT
    a."apellidos",
    a."nombre",
    a."cedula",
    a."email",
    pat."nombre" AS "patrocinador_nombre",
    pat."nombre_organizacion" AS "patrocinador_organizacion",
    pat."email" AS "patrocinador_email",
    d."nombre" AS "deporte",
    paq."nombre",
    e."apellidos" AS "entrenador_apellidos",
    e."nombre" AS "entrenador_nombre"
  FROM "ATLETA" a
  LEFT JOIN "PAQUETE" paq
    ON a."id_paquete"=paq."id"
  LEFT JOIN "DEPORTE" d
    ON paq."deporte"=d."nombre"
  LEFT JOIN "ENTRENADOR" e
    ON paq."id_entrenador"=e."id"
  LEFT JOIN "PATROCINADOR" pat
    ON a."id_patrocinador"=pat."id"
  ORDER BY a."apellidos";
