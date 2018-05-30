SELECT a."apellidos",a."nombre",paq."nombre" AS "paquete",d."nombre" AS "deporte",pag."fecha_pago",pag."mes_cancelado",pag."año_cancelado"
FROM "PAGO" pag
INNER JOIN "ATLETA" a
ON a."cedula"=pag."cedula_atleta"
INNER JOIN "PAQUETE" paq
ON pag."id_paquete"= paq."id"
INNER JOIN "DEPORTE" d
ON d."id"=paq."id_deporte"
-- WHERE pag."cedula_atleta"='123456789'  --change athlete cedula here
-- uncomment line to look at individual athletes
ORDER BY a."apellidos";
