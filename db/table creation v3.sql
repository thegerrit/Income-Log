CREATE TABLE "DEPORTE" (
  "nombre" VARCHAR(50) NOT NULL,
  PRIMARY KEY ("nombre")
);

CREATE TABLE "ENTRENADOR" (
  "id" SERIAL,
  "nombre" VARCHAR(50) NOT NULL,
  "apellidos" VARCHAR(50) NOT NULL,
  "email" VARCHAR(100) NOT NULL,
  PRIMARY KEY ("id")
);

CREATE TABLE "PATROCINADOR" (
  "id" SERIAL,
  "organizacion" BOOLEAN,
  "nombre" VARCHAR(50) NOT NULL,
  "email" VARCHAR(100) NOT NULL,
  PRIMARY KEY ("id")
);

CREATE TABLE "PAQUETE" (
  "id" SERIAL,
  "nombre" VARCHAR(50) NOT NULL,
  "precio" INTEGER NOT NULL,
  "deporte" VARCHAR(50) NOT NULL,
  "id_entrenador" INTEGER NOT NULL,
  PRIMARY KEY ("id"),
  FOREIGN KEY ("deporte") REFERENCES "DEPORTE"("nombre") ON DELETE RESTRICT,
  FOREIGN KEY ("id_entrenador") REFERENCES "ENTRENADOR"("id") ON DELETE RESTRICT
);

CREATE TABLE "ATLETA" (
  "cedula" BIGINT NOT NULL,
  "nombre" VARCHAR(50) NOT NULL,
  "apellidos" VARCHAR(100) NOT NULL,
  "email" VARCHAR(100) NOT NULL,
  "id_paquete" INTEGER NOT NULL,
  "id_patrocinador" INTEGER,
  "retirado" BOOLEAN DEFAULT FALSE,
  PRIMARY KEY ("cedula"),
  FOREIGN KEY ("id_paquete") REFERENCES "PAQUETE"("id") ON DELETE RESTRICT,
  FOREIGN KEY ("id_patrocinador") REFERENCES "PATROCINADOR"("id") ON DELETE RESTRICT
);

CREATE TABLE "PAGO" (
  "id" SERIAL,
  "cedula_atleta" BIGINT NOT NULL,
  "id_paquete" INTEGER NOT NULL,
  "id_patrocinador" INTEGER,
  "fecha_pago" DATE NOT NULL,
  "fecha_creacion" DATE NOT NULL,
  "mes_cancelado" INTEGER NOT NULL,
  "año_cancelado" INTEGER NOT NULL,
  "monto" INTEGER NOT NULL,
  "diferencia" INTEGER NOT NULL,
  "activo" BOOLEAN DEFAULT TRUE,
  PRIMARY KEY ("id"),
  FOREIGN KEY ("cedula_atleta") REFERENCES "ATLETA"("cedula") ON DELETE RESTRICT,
  FOREIGN KEY ("id_paquete") REFERENCES "PAQUETE"("id") ON DELETE RESTRICT,
  FOREIGN KEY ("id_patrocinador") REFERENCES "PATROCINADOR"("id") ON DELETE RESTRICT
);
