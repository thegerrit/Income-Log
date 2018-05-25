CREATE TABLE "HypoxicCR"."public"."Atletas" (
  "Cedula" VARCHAR(9) NOT NULL,
  "Nombre" VARCHAR(50) NOT NULL,
  "Apellido" VARCHAR(50) NOT NULL,
  "Email" VARCHAR(100) NOT NULL,
  PRIMARY KEY ("Cedula")
);

CREATE TABLE "HypoxicCR"."public"."Entrenadores" (
  "Cedula" VARCHAR(9) NOT NULL,
  "Nombre" VARCHAR(50) NOT NULL,
  "Apellido" VARCHAR(50) NOT NULL,
  "Email" VARCHAR(100) NOT NULL,
  PRIMARY KEY ("Cedula")
);

CREATE TABLE "HypoxicCR"."public"."Paquetes" (
  "Paquete_id" SERIAL,
  "Nombre" VARCHAR(50) NOT NULL,
  "Deporte" VARCHAR (50) NOT NULL,
  "Precio_mensual" INTEGER NOT NULL,
  PRIMARY KEY ("Paquete_id")
);

CREATE TABLE "HypoxicCR"."public"."Patrocinadores" (
  "Patrocinador_id" SERIAL,
  "Organizacion" VARCHAR (50),
  "Nombre" VARCHAR(50),
  "Apellido" VARCHAR(50),
  "Email" VARCHAR(100) NOT NULL,
  PRIMARY KEY ("Patrocinador_id")
);

CREATE TABLE "HypoxicCR"."public"."Fechas_de_entrega" (
  "Fecha" DATE,
  PRIMARY KEY ("Fecha")
);

CREATE TABLE "HypoxicCR"."public"."Info_atletas (bridge table)" (
  "Cedula_atleta" VARCHAR(9),
  "Cedula_entrenador" VARCHAR(9),
  "Patrocinador_id" INTEGER,
  "Paquete_seleccionado" INTEGER NOT NULL,
  PRIMARY KEY ("Cedula_atleta"),
  FOREIGN KEY ("Cedula_atleta") REFERENCES "Atletas"("Cedula"),
  FOREIGN KEY ("Cedula_entrenador") REFERENCES "Entrenadores"("Cedula"),
  FOREIGN KEY ("Patrocinador_id") REFERENCES "Patrocinadores"("Patrocinador_id"),
  FOREIGN KEY ("Paquete_seleccionado") REFERENCES "Paquetes"("Paquete_id")
);

CREATE TABLE "HypoxicCR"."public"."Pagos (join Table)" (
  "id_pago" SERIAL NOT NULL,
  "Cedula_atleta" VARCHAR(9) NOT NULL,
  "Paquete_id" INTEGER,
  "Patrocinador_id" INTEGER,
  "Fecha_debida" DATE NOT NULL,
  "Fecha_de_entrega" DATE,
  PRIMARY KEY ("id_pago"),
  FOREIGN KEY ("Cedula_atleta") REFERENCES "Info_atletas (bridge table)"("Cedula_atleta"),
  FOREIGN KEY ("Paquete_id") REFERENCES "Paquetes"("Paquete_id"),
  FOREIGN KEY ("Patrocinador_id") REFERENCES "Patrocinadores"("Patrocinador_id"),
  FOREIGN KEY ("Fecha_debida") REFERENCES "Fechas_de_entrega"("Fecha")
);
