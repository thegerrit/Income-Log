
SELECT DISTINCT a."apellidos",a."nombre",a."cedula", a."email", e."apellidos" AS "entrenador_apellidos", e."nombre" AS "entrenador_nombre", d."nombre" AS "deporte"
FROM "ATLETA" a
INNER JOIN "PAGO" pag
ON a."cedula"=pag."cedula_atleta"
INNER JOIN "PAQUETE" paq
ON paq."id"=a."id_paquete"
INNER JOIN "ENTRENADOR" e
ON paq."id_entrenador"=e."id"
INNER JOIN "DEPORTE" d
ON paq."id_deporte"=d."id"
WHERE pag."mes_cancelado"='5' --Change month here
AND a."retirado"=FALSE
ORDER BY deporte, entrenador_apellidos, apellidos;
