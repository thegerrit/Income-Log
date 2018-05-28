INSERT INTO "HypoxicCR"."public"."DEPORTE" ("nombre") VALUES (
'Carrera de Fondo'
),(
'Ciclismo'
),(
'Triatlón'
);

INSERT INTO "HypoxicCR"."public"."ENTRENADOR" ("nombre","apellidos","email") VALUES (
'Jennifer',
'Aniston',
'jennifer@sample.com'
),(
'Courtney',
'Cox',
'courtney@sample.com'
),(
'Matthew',
'Perry',
'matthew@sample.com'
),(
'Lisa',
'Kudrow',
'lisa@sample.com'
),(
'David',
'Schwimmer',
'david@sample.com'
),(
'Matt',
'LeBlanc',
'matt@sample.com'
);

INSERT INTO "HypoxicCR"."public"."PATROCINADOR" ("nombre_organizacion","nombre","apellidos","email") VALUES (
'How I Met Your Mother',
'Neil Patrick',
'Harris',
'neil@sample.com'
),(
'org2',
'Cobie',
'Smulders',
'cobie@sample.com'
),(
'How I Met Your Mother',
'Josh',
'Radnor',
'josh@sample.com'
);

INSERT INTO "HypoxicCR"."public"."PAQUETE" ("nombre","precio","id_deporte","id_entrenador") VALUES (
'Bronce',
'37000',
'1',
'1'
),(
'Plata',
'45000',
'1',
'1'
),(
'Bronce',
'37000',
'1',
'2'
),(
'Bronce',
'38000',
'2',
'3'
),(
'Plata',
'48000',
'2',
'4'
),(
'Bronce',
'40000',
'3',
'5'
),(
'Plata',
'55000',
'3',
'6'
);

INSERT INTO "HypoxicCR"."public"."ATLETA" ("cedula","nombre", "apellidos", "email","id_paquete","id_patrocinador") VALUES (
'123456789 ',
'Michael',
'Richards',
'Michael@sample'
'1',
'1'
),(
'234567891',
'Jerry',
'Seinfeld',
'jerry@sample'
'1',
'1'
),(
'345678912',
'Larry',
'David',
'larry@sample'
'2',
'1'
),(
'456789123',
'Julia',
'Louis-Dreyfus',
'julia@sample'
'3',
'2'
),(
'567891234',
'Jason',
'Alexander',
'jason@sample'
'3',
'2'
),(
'678912345',
'Wayne',
'Knight',
'wayne@sample'
'4',
NULL
),(
'789123456',
'Jerry',
'Stiller',
'jerry@sample'
'5',
'3'
),(
'891234567',
'Marisa',
'Tomei',
'marisa@sample'
'6',
NULL
);
