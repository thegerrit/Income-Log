SELECT a."cedula",a."nombre",a."apellidos", a."email", a."id_paquete", paq."nombre", paq."precio", d."nombre" AS "deporte", e."nombre" AS "entrenador_nombre", e."apellidos" AS "entrenador_apellidos"
FROM "HypoxicCR"."public"."ATLETA" a
LEFT JOIN "HypoxicCR"."public"."PAQUETE" paq
ON a."id_paquete"=paq."id"
LEFT JOIN "HypoxicCR"."public"."DEPORTE" d
ON paq."id_deporte"=d."id"
LEFT JOIN "HypoxicCR"."public"."ENTRENADOR" e
ON paq."id_entrenador"=e."id"
ORDER BY a."apellidos";
