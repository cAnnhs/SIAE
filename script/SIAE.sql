-- TABLA PARA ESTUDIANTES
CREATE TABLE Estudiantes (
    codigo VARCHAR(10) PRIMARY KEY,
    nombre_completo VARCHAR(100) NOT NULL,
    programa VARCHAR(50) NOT NULL,
    telefono VARCHAR(15),
    correo_institucional VARCHAR(100) UNIQUE NOT NULL
);

-- TABLA PARA DOCENTES
CREATE TABLE Docentes (
    identificacion VARCHAR(15) PRIMARY KEY,
    nombre_completo VARCHAR(100) NOT NULL,
    departamento_area VARCHAR(50) NOT NULL,
    tipo_contrato VARCHAR(20) NOT NULL CHECK (tipo_contrato IN ('Tiempo Completo', 'Medio Tiempo', 'Cátedra')),
    correo_institucional VARCHAR(100) UNIQUE NOT NULL
);

-- TABLA PARA ADMINISTRATIVOS
CREATE TABLE Administrativos (
    identificacion VARCHAR(15) PRIMARY KEY,
    nombre_completo VARCHAR(100) NOT NULL,
    dependencia VARCHAR(50) NOT NULL,
    cargo VARCHAR(50) NOT NULL,
    correo VARCHAR(100) UNIQUE NOT NULL
);

-- TABLA PARA DIRECTIVOS
CREATE TABLE Directivos (
    identificacion VARCHAR(15) PRIMARY KEY,
    nombre_completo VARCHAR(100) NOT NULL,
    rol_titulo VARCHAR(50) NOT NULL,
    unidad_facultad VARCHAR(50) NOT NULL,
    correo_institucional VARCHAR(100) UNIQUE NOT NULL
);

INSERT INTO Estudiantes (codigo, nombre_completo, programa, telefono, correo_institucional) VALUES
('2023001', 'Ana Sofía Pérez López', 'Ingeniería de Sistemas', '3011234567', 'ana.perez@inst.edu'),
('2023002', 'Juan Carlos Gómez Arias', 'Administración de Empresas', '3109876543', 'juan.gomez@inst.edu'),
('2023003', 'María Fernanda Díaz Castro', 'Derecho', '3205551234', 'maria.diaz@inst.edu'),
('2023004', 'Luis Alberto Rojas Vega', 'Psicología', '3154449876', 'luis.rojas@inst.edu'),
('2023005', 'Valeria Quintero Maza', 'Comunicación Social', '3007770011', 'valeria.quintero@inst.edu'),
('2023006', 'Camilo Ernesto Pardo Gil', 'Contaduría Pública', '3112223344', 'camilo.pardo@inst.edu'),
('2023007', 'Laura Marcela Torres Ruiz', 'Arquitectura', '3056667788', 'laura.torres@inst.edu'),
('2023008', 'Pedro Antonio Mora Soto', 'Medicina', '3181112233', 'pedro.mora@inst.edu'),
('2023009', 'Daniela Alejandra Neira', 'Licenciatura en Inglés', '3043334455', 'daniela.neira@inst.edu'),
('2023010', 'Andrés Felipe Cruz Silva', 'Diseño Gráfico', '3125556677', 'andres.cruz@inst.edu'),
('2023011', 'Natalia Isabel Rueda C.', 'Ingeniería Industrial', '3028889900', 'natalia.rueda@inst.edu'),
('2023012', 'Felipe Andrés Soto Ríos', 'Fisioterapia', '3169990011', 'felipe.soto@inst.edu'),
('2023013', 'Paula Andrea Vélez Cano', 'Odontología', '3141113355', 'paula.velez@inst.edu'),
('2023014', 'Miguel Ángel Sierra B.', 'Ingeniería Civil', '3176668800', 'miguel.sierra@inst.edu'),
('2023015', 'Viviana Lucía Ochoa', 'Biología', '3012224466', 'viviana.ochoa@inst.edu');

INSERT INTO Docentes (identificacion, nombre_completo, departamento_area, tipo_contrato, correo_institucional) VALUES
('88012345', 'Dr. Ricardo A. Castro N.', 'Ciencias Básicas (Matemáticas)', 'Tiempo Completo', 'ricardo.castro@inst.edu'),
('79543210', 'Msc. Elena P. Jaramillo L.', 'Humanidades (Filosofía)', 'Cátedra', 'elena.jaramillo@inst.edu'),
('90056789', 'Ing. Francisco G. Ríos S.', 'Ingeniería de Sistemas', 'Tiempo Completo', 'francisco.rios@inst.edu'),
('65123456', 'Dra. Martha C. Vélez M.', 'Ciencias Sociales (Sociología)', 'Medio Tiempo', 'martha.velez@inst.edu'),
('70234567', 'Abg. Jorge A. Pineda R.', 'Derecho', 'Cátedra', 'jorge.pineda@inst.edu'),
('81345678', 'Msc. Ana M. Henao T.', 'Administración y Finanzas', 'Tiempo Completo', 'ana.henao@inst.edu'),
('52456789', 'Esp. David L. Marín A.', 'Comunicación y Diseño', 'Medio Tiempo', 'david.marin@inst.edu'),
('73567890', 'Dr. Germán F. Ortiz V.', 'Ciencias de la Salud (Medicina)', 'Tiempo Completo', 'german.ortiz@inst.edu'),
('84678901', 'Ing. Luisa F. Sierra M.', 'Ingeniería Industrial', 'Tiempo Completo', 'luisa.sierra@inst.edu'),
('95789012', 'Msc. Carlos E. Buitrago', 'Contaduría Pública', 'Cátedra', 'carlos.buitrago@inst.edu'),
('66890123', 'Dra. Cecilia L. Naranjo', 'Arquitectura', 'Tiempo Completo', 'cecilia.naranjo@inst.edu'),
('77001234', 'Msc. Pablo E. Vargas I.', 'Idiomas (Inglés)', 'Medio Tiempo', 'pablo.vargas@inst.edu'),
('88112345', 'Esp. Viviana K. López H.', 'Psicología', 'Cátedra', 'viviana.lopez@inst.edu'),
('99223456', 'Dr. Héctor R. Zambrano P.', 'Biología y Química', 'Tiempo Completo', 'hector.zambrano@inst.edu'),
('60334567', 'Ing. Patricia S. Osorio', 'Ingeniería Civil', 'Medio Tiempo', 'patricia.osorio@inst.edu');

INSERT INTO Administrativos (identificacion, nombre_completo, dependencia, cargo, correo) VALUES
('50123456', 'Liliana M. Vargas R.', 'Registro y Control Académico', 'Asistente de Matrículas', 'liliana.vargas@inst.edu'),
('51234567', 'Ricardo A. Ospina P.', 'Gestión Humana', 'Analista de Nómina', 'ricardo.ospina@inst.edu'),
('52345678', 'Sandra E. Giraldo V.', 'Bienestar Universitario', 'Coordinadora de Deportes', 'sandra.giraldo@inst.edu'),
('53456789', 'Javier H. Téllez B.', 'Tesorería', 'Auxiliar Contable', 'javier.tellez@inst.edu'),
('54567890', 'Carolina A. Gómez F.', 'Biblioteca Central', 'Auxiliar de Referencia', 'carolina.gomez@inst.edu'),
('55678901', 'Mario E. Restrepo A.', 'Centro de Cómputo', 'Técnico de Soporte IT', 'mario.restrepo@inst.edu'),
('56789012', 'Paula S. Jiménez L.', 'Mercadeo y Admisiones', 'Ejecutiva de Admisiones', 'paula.jimenez@inst.edu'),
('57890123', 'Alberto C. Morales Q.', 'Mantenimiento y Logística', 'Supervisor de Servicios', 'alberto.morales@inst.edu'),
('58901234', 'Diana K. Rincón M.', 'Decanatura de Ingeniería', 'Asistente Administrativa', 'diana.rincon@inst.edu'),
('59012345', 'Esteban G. Rojas C.', 'Secretaría General', 'Auxiliar de Archivo', 'esteban.rojas@inst.edu'),
('60123456', 'Gloria I. Torres Z.', 'Compras y Suministros', 'Analista de Inventario', 'gloria.torres@inst.edu'),
('61234567', 'Humberto L. Cruz E.', 'Extensión y Proyección', 'Asistente de Eventos', 'humberto.cruz@inst.edu'),
('62345678', 'Isabella P. Quintero V.', 'Oficina Jurídica', 'Secretaria Legal', 'isabella.quintero@inst.edu'),
('63456789', 'Fernando D. López H.', 'Acreditación y Calidad', 'Auxiliar de Documentación', 'fernando.lopez@inst.edu'),
('64567890', 'Viviana L. Cárdenas J.', 'Decanatura de Ciencias Sociales', 'Recepcionista', 'viviana.cardenas@inst.edu');

INSERT INTO Directivos (identificacion, nombre_completo, rol_titulo, unidad_facultad, correo_institucional) VALUES
('40012345', 'Dr. Armando J. Valdés M.', 'Rector', 'Rectoría General', 'rectoria@inst.edu'),
('41123456', 'Dra. Beatriz E. Cano G.', 'Vicerrectora Académica', 'Vicerrectoría Académica', 'beatriz.cano@inst.edu'),
('42234567', 'Msc. Carlos F. Soto P.', 'Vicerrector Administrativo', 'Vicerrectoría Administrativa', 'carlos.soto@inst.edu'),
('43345678', 'Dr. Daniel H. Neira Z.', 'Decano', 'Facultad de Ingeniería', 'daniel.neira@inst.edu'),
('44456789', 'Dra. Emilia T. Rojas V.', 'Decana', 'Facultad de Ciencias Sociales', 'emilia.rojas@inst.edu'),
('45567890', 'Msc. Fabio J. Gil A.', 'Director de Posgrados', 'Dirección de Posgrados', 'fabio.gil@inst.edu'),
('46678901', 'Abg. Gabriel L. Pardo R.', 'Secretario General', 'Secretaría General', 'gabriel.pardo@inst.edu'),
('47789012', 'Msc. Helena K. Torres B.', 'Directora', 'Dirección de Planeación', 'helena.torres@inst.edu'),
('48890123', 'Dr. Iván Q. Duque S.', 'Jefe de Departamento', 'Departamento de Matemáticas', 'ivan.duque@inst.edu'),
('49901234', 'Dra. Julieta R. Londoño C.', 'Decana', 'Facultad de Ciencias de la Salud', 'julieta.londono@inst.edu'),
('50012345', 'Ing. Luis A. Sierra F.', 'Director de Carrera', 'Ingeniería Industrial', 'luis.sierra@inst.edu'),
('51123456', 'Msc. Mónica P. Vélez H.', 'Directora de Investigación', 'Dirección de Investigación', 'monica.velez@inst.edu'),
('52234567', 'Dr. Nicolás E. Ochoa T.', 'Jefe de Departamento', 'Departamento de Contaduría', 'nicolas.ochoa@inst.edu'),
('53345678', 'Dra. Olga G. Gómez L.', 'Decana', 'Facultad de Educación', 'olga.gomez@inst.edu'),
('54456789', 'Msc. Pablo D. Ruiz I.', 'Director de Calidad', 'Dirección de Calidad', 'pablo.ruiz@inst.edu');

