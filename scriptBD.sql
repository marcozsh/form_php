DROP TABLE IF EXISTS comuna;

DROP TABLE IF EXISTS region;

DROP TABLE IF EXISTS votos;

DROP TABLE IF EXISTS candidato;

DROP TABLE IF EXISTS votante;

CREATE TABLE votante(
	rut varchar(20) not null,
	nombre_apellido varchar(200) not null,
	alias varchar(200) not null,
	email varchar(150) not null,
	constraint pk_votante primary key(rut)
);

CREATE TABLE candidato(
	rut varchar(20) not null,
	nombre varchar(100) not null,
	apellido varchar (100) not null,
	constraint pk_candidato primary key (rut)
);

CREATE TABLE region(
	region_id SERIAL,
	region_nombre VARCHAR(250) NOT NULL,
	constraint pk_region primary key(region_id)
);

CREATE TABLE comuna(
	comuna_id SERIAL,
	comuna_nombre VARCHAR(250),
	region_id INT REFERENCES region,
	constraint pk_comuna primary key(comuna_id)
);

CREATE TABLE votos(
	voto_id SERIAL,
	rut_votante varchar(250) REFERENCES votante,
	rut_candidato varchar(20) REFERENCES candidato,
	region_id_votante INT REFERENCES region,
	comuna_id_votante INT REFERENCES comuna,
	medio_comunicacion varchar(100) not null,
	constraint pk_voto_id primary key(voto_id)
);

INSERT INTO
	candidato
VALUES
	('16.163.631-2', 'BORIC FONT', 'GABRIEL');

INSERT INTO
	candidato
VALUES
	('7.477.226-9', 'KAST RIST', 'JOSE ANTONIO');

INSERT INTO
	candidato
VALUES
	('6.872.197-0', 'PARISI FERNANDEZ', 'FRANCO ALDO');

INSERT INTO
	region (region_nombre)
VALUES
	('Arica-Parinacota');

INSERT INTO
	region (region_nombre)
VALUES
	('Tarapacá');

INSERT INTO
	region (region_nombre)
VALUES
	('Antofagasta');

INSERT INTO
	region (region_nombre)
VALUES
	('Atacama');

INSERT INTO
	region (region_nombre)
VALUES
	('Coquimbo');

INSERT INTO
	region (region_nombre)
VALUES
	('Valparaíso');

INSERT INTO
	region (region_nombre)
VALUES
	('Metropolitana');

INSERT INTO
	region (region_nombre)
VALUES
	('OHiggins');

INSERT INTO
	region (region_nombre)
VALUES
	('Maule');

INSERT INTO
	region (region_nombre)
VALUES
	('Ñuble');

INSERT INTO
	region (region_nombre)
VALUES
	('Bío Bío');

INSERT INTO
	region (region_nombre)
VALUES
	('Araucanía');

INSERT INTO
	region (region_nombre)
VALUES
	('Los Ríos');

INSERT INTO
	region (region_nombre)
VALUES
	('Los Lagos');

INSERT INTO
	region (region_nombre)
VALUES
	('Aysén');

INSERT INTO
	region (region_nombre)
VALUES
	('Magallanes y Antártica Chilena');

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Arica', 1);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Camarones', 1);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('General Lagos', 1);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Putre', 1);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Alto Hospicio', 2);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Camiña', 2);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Colchane', 2);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Huara', 2);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Iquique', 2);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Pica', 2);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Pozo Almonte', 2);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Antofagasta', 3);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Calama', 3);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('María Elena', 3);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Mejillones', 3);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Ollagüe', 3);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('San Pedro de Atacama', 3);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Sierra Gorda', 3);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Taltal', 3);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Tocopilla', 3);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Alto del Carmen', 4);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Caldera', 4);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Chañaral', 4);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Copiapó', 4);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Diego de Almagro', 4);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Freirina', 4);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Huasco', 4);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Tierra Amarilla', 4);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Vallenar', 4);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Andacollo', 5);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Canela', 5);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Combarbalá', 5);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Coquimbo', 5);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Illapel', 5);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('La Higuera', 5);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('La Serena', 5);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Los Vilos', 5);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Monte Patria', 5);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Ovalle', 5);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Paihuano', 5);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Punitaqui', 5);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Río Hurtado', 5);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Salamanca', 5);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Vicuña', 5);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Algarrobo', 6);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Cabildo', 6);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Calera', 6);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Calle Larga', 6);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Cartagena', 6);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Casablanca', 6);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Catemu', 6);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Concón', 6);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('El Quisco', 6);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('El Tabo', 6);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Hijuelas', 6);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Isla de Pascua', 6);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Juan Fernández', 6);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('La Cruz', 6);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('La Ligua', 6);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Limache', 6);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Llaillay', 6);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Los Andes', 6);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Nogales', 6);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Olmué', 6);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Panquehue', 6);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Papudo', 6);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Petorca', 6);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Puchuncaví', 6);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Putaendo', 6);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Quillota', 6);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Quilpué', 6);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Quintero', 6);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Rinconada', 6);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('San Antonio', 6);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('San Esteban', 6);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('San Felipe', 6);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Santa María', 6);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Santo Domingo', 6);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Valparaíso', 6);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Villa Alemana', 6);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Viña del Mar', 6);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Zapallar', 6);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Alhué', 7);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Buin', 7);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Calera de Tango', 7);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Cerrillos', 7);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Cerro Navia', 7);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Colina', 7);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Conchalí', 7);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Curacaví', 7);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('El Bosque', 7);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('El Monte', 7);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Estación Central', 7);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Huechuraba', 7);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Independencia', 7);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Isla de Maipo', 7);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('La Cisterna', 7);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('La Florida', 7);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('La Granja', 7);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Lampa', 7);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('La Pintana', 7);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('La Reina', 7);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Las Condes', 7);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Lo Barnechea', 7);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Lo Espejo', 7);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Lo Prado', 7);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Macul', 7);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Maipú', 7);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('María Pinto', 7);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Melipilla', 7);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Ñuñoa', 7);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Padre Hurtado', 7);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Paine', 7);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Pedro Aguirre Cerda', 7);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Peñaflor', 7);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Peñalolén', 7);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Pirque', 7);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Providencia', 7);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Pudahuel', 7);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Puente Alto', 7);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Quilicura', 7);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Quinta Normal', 7);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Recoleta', 7);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Renca', 7);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('San Bernardo', 7);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('San Joaquín', 7);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('San José de Maipo', 7);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('San Miguel', 7);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('San Pedro', 7);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('San Ramón', 7);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Santiago', 7);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Talagante', 7);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Tiltil', 7);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Vitacura', 7);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Chépica', 8);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Chimbarongo', 8);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Codegua', 8);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Coínco', 8);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Coltauco', 8);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Doñihue', 8);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Graneros', 8);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('La Estrella', 8);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Las Cabras', 8);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Litueche', 8);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Lolol', 8);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Machalí', 8);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Malloa', 8);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Marchihue', 8);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Mostazal', 8);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Nancagua', 8);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Navidad', 8);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Olivar', 8);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Palmilla', 8);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Paredones', 8);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Peralillo', 8);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Peumo', 8);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Pichidegua', 8);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Pichilemu', 8);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Placilla', 8);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Pumanque', 8);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Quinta de Tilcoco', 8);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Rancagua', 8);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Rengo', 8);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Requínoa', 8);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('San Fernando', 8);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Santa Cruz', 8);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('San Vicente', 8);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Cauquenes', 9);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Chanco', 9);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Colbún', 9);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Constitución', 9);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Curepto', 9);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Curicó', 9);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Empedrado', 9);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Hualañé', 9);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Licantén', 9);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Linares', 9);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Longaví', 9);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Maule', 9);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Molina', 9);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Parral', 9);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Pelarco', 9);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Pelluhue', 9);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Pencahue', 9);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Rauco', 9);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Retiro', 9);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Río Claro', 9);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Romeral', 9);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Sagrada Familia', 9);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('San Clemente', 9);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('San Javier', 9);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('San Rafael', 9);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Talca', 9);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Teno', 9);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Vichuquén', 9);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Villa Alegre', 9);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Yerbas Buenas', 9);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Bulnes', 10);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Chillán', 10);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Chillán Viejo', 10);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Cobquecura', 10);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Coelemu', 10);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Coihueco', 10);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('El Carmen', 10);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Ninhue', 10);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Ñiquén', 10);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Pemuco', 10);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Pinto', 10);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Portezuelo', 10);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Quillón', 10);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Quirihue', 10);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Ránquil', 10);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('San Carlos', 10);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('San Fabián', 10);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('San Ignacio', 10);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('San Nicolás', 10);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Treguaco', 10);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Yungay', 10);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Alto Bío Bío', 11);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Antuco', 11);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Arauco', 11);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Cabrero', 11);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Cañete', 11);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Chiguayante', 11);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Concepción', 11);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Contulmo', 11);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Coronel', 11);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Curanilahue', 11);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Florida', 11);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Hualpén', 11);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Hualqui', 11);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Laja', 11);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Lebu', 11);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Los Alamos', 11);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Los Angeles', 11);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Lota', 11);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Mulchén', 11);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Nacimiento', 11);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Negrete', 11);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Penco', 11);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Quilaco', 11);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Quilleco', 11);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('San Pedro de la Paz', 11);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('San Rosendo', 11);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Santa Bárbara', 11);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Santa Juana', 11);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Talcahuano', 11);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Tirúa', 11);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Tomé', 11);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Tucapel', 11);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Yumbel', 11);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Angol', 12);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Carahue', 12);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Cholchol', 12);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Collipulli', 12);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Cunco', 12);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Curacautín', 12);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Curarrehue', 12);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Ercilla', 12);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Freire', 12);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Galvarino', 12);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Gorbea', 12);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Lautaro', 12);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Loncoche', 12);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Lonquimay', 12);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Los Sauces', 12);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Lumaco', 12);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Melipeuco', 12);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Nueva Imperial', 12);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Padre Las Casas', 12);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Perquenco', 12);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Pitrufquén', 12);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Pucón', 12);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Purén', 12);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Renaico', 12);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Saavedra', 12);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Temuco', 12);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Teodoro Schmidt', 12);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Toltén', 12);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Traiguén', 12);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Victoria', 12);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Vilcún', 12);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Villarrica', 12);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Corral', 13);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Futrono', 13);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Lago Ranco', 13);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Lanco', 13);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('La Unión', 13);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Los Lagos', 13);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Máfil', 13);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Mariquina', 13);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Paillaco', 13);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Panguipulli', 13);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Río Bueno', 13);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Valdivia', 13);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Ancud', 14);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Calbuco', 14);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Castro', 14);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Chaitén', 14);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Chonchi', 14);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Cochamó', 14);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Curaco de Vélez', 14);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Dalcahue', 14);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Fresia', 14);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Frutillar', 14);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Futaleufú', 14);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Hualaihué', 14);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Llanquihue', 14);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Los Muermos', 14);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Maullín', 14);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Osorno', 14);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Palena', 14);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Puerto Montt', 14);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Puerto Octay', 14);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Puerto Varas', 14);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Puqueldón', 14);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Purranque', 14);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Puyehue', 14);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Queilén', 14);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Quellón', 14);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Quemchi', 14);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Quinchao', 14);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Río Negro', 14);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('San Juan de la Costa', 14);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('San Pablo', 14);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Aysén', 15);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Chile Chico', 15);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Cisnes', 15);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Cochrane', 15);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Coyhaique', 15);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Guaitecas', 15);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Lago Verde', 15);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('OHiggins', 15);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Río Ibáñez', 15);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Tortel', 15);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('romper', 15);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Antártica', 16);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Cabo de Hornos', 16);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Laguna Blanca', 16);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Natales', 16);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Porvenir', 16);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Primavera', 16);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Punta Arenas', 16);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Río Verde', 16);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('San Gregorio', 16);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Timaukel', 16);

INSERT INTO
	comuna(comuna_nombre, region_id)
VALUES
	('Torres del Paine', 16);