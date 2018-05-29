SELECT DISTINCT a."apellidos",a."nombre",a."cedula", a."email", e."apellidos" AS "entrenador_apellidos", e."nombre" AS "entrenador_nombre", d."nombre" AS "deporte"
FROM "HypoxicCR"."public"."ATLETA" a
INNER JOIN "HypoxicCR"."public"."PAGO" pag
ON a."cedula"=pag."cedula_atleta"
INNER JOIN "HypoxicCR"."public"."PAQUETE" paq
ON paq."id"=a."id_paquete"
INNER JOIN "HypoxicCR"."public"."ENTRENADOR" e
ON paq."id_entrenador"=e."id"
INNER JOIN "HypoxicCR"."public"."DEPORTE" d
ON paq."id_deporte"=d."id"
WHERE pag."mes_cancelado"<>'5' --Change month here
EXCEPT
SELECT DISTINCT a."apellidos",a."nombre",a."cedula", a."email", e."apellidos" AS "entrenador_apellidos", e."nombre" AS "entrenador_nombre", d."nombre" AS "deporte"
FROM "HypoxicCR"."public"."ATLETA" a
INNER JOIN "HypoxicCR"."public"."PAGO" pag
ON a."cedula"=pag."cedula_atleta"
INNER JOIN "HypoxicCR"."public"."PAQUETE" paq
ON paq."id"=a."id_paquete"
INNER JOIN "HypoxicCR"."public"."ENTRENADOR" e
ON paq."id_entrenador"=e."id"
INNER JOIN "HypoxicCR"."public"."DEPORTE" d
ON paq."id_deporte"=d."id"
WHERE pag."mes_cancelado"='5';
