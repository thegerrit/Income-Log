CREATE TABLE "HypoxicCR"."public"."DEPORTE" (
  "id" SERIAL,
  "nombre" VARCHAR(50) NOT NULL,
  PRIMARY KEY ("id")
);

CREATE TABLE "HypoxicCR"."public"."ENTRENADOR" (
  "id" INTEGER NOT NULL,
  "nombre" VARCHAR(50) NOT NULL,
  "apellidos" VARCHAR(50) NOT NULL,
  "email" VARCHAR(100) NOT NULL,
  PRIMARY KEY ("id")
);

CREATE TABLE "HypoxicCR"."public"."PATROCINADOR" (
  "id" SERIAL,
  "nombre_organizacion" VARCHAR(50),
  "nombre" VARCHAR(50),
  "apellidos" VARCHAR(50),
  "email" VARCHAR(100) NOT NULL,
  PRIMARY KEY ("id")
);

CREATE TABLE "HypoxicCR"."public"."PAQUETE" (
  "id" SERIAL,
  "nombre" VARCHAR(50) NOT NULL,
  "precio" INTEGER NOT NULL,
  "id_deporte" INTEGER NOT NULL,
  "id_entrenador" INTEGER NOT NULL,
  PRIMARY KEY ("id"),
  FOREIGN KEY ("id_deporte") REFERENCES "DEPORTE"("id"),
  FOREIGN KEY ("id_entrenador") REFERENCES "ENTRENADOR"("id")
);

CREATE TABLE "HypoxicCR"."public"."ATLETA" (
  "cedula" BIGINT NOT NULL,
  "nombre" VARCHAR(50) NOT NULL,
  "apellidos" VARCHAR(100) NOT NULL,
  "email" VARCHAR(100) NOT NULL,
  "id_paquete" INTEGER NOT NULL,
  "id_patrocinador" INTEGER,
  PRIMARY KEY ("cedula"),
  FOREIGN KEY ("id_paquete") REFERENCES "PAQUETE"("id"),
  FOREIGN KEY ("id_patrocinador") REFERENCES "PATROCINADOR"("id")
);

CREATE TABLE "HypoxicCR"."public"."PAGO" (
  "id" SERIAL,
  "cedula_atleta" BIGINT NOT NULL,
  "id_paquete" INTEGER NOT NULL,
  "id_patrocinador" INTEGER,
  "fecha_pago" DATE NOT NULL,
  "fecha_creacion" DATE NOT NULL,
  "mes_cancelado" DATE NOT NULL,
  "monto" INTEGER NOT NULL,
  "diferencia" INTEGER NOT NULL,
  PRIMARY KEY ("id"),
  FOREIGN KEY ("cedula_atleta") REFERENCES "ATLETA"("cedula"),
  FOREIGN KEY ("id_paquete") REFERENCES "PAQUETE"("id"),
  FOREIGN KEY ("id_patrocinador") REFERENCES "PATROCINADOR"("id")
);