SELECT a."apellidos",a."nombre",a."cedula", a."email",pat."apellidos" AS "patrocinador_apellidos",pat."nombre" AS "patrocinador_nombre",pat."nombre_organizacion" AS "patrocinador_organizacion",pat."email" AS "patrocinador_email",d."nombre" AS "deporte", paq."nombre",e."apellidos" AS "entrenador_apellidos",e."nombre" AS "entrenador_nombre"
FROM "HypoxicCR"."public"."ATLETA" a
LEFT JOIN "HypoxicCR"."public"."PAQUETE" paq
ON a."id_paquete"=paq."id"
LEFT JOIN "HypoxicCR"."public"."DEPORTE" d
ON paq."id_deporte"=d."id"
LEFT JOIN "HypoxicCR"."public"."ENTRENADOR" e
ON paq."id_entrenador"=e."id"
LEFT JOIN "HypoxicCR"."public"."PATROCINADOR" pat
ON a."id_patrocinador"=pat."id"
ORDER BY a."apellidos";
