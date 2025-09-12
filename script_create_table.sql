-- Crear base de datos con codificación UTF-8
CREATE DATABASE sistema_cursos
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_general_ci;

USE sistema_cursos;

-- Tabla de usuarios
CREATE TABLE usuarios (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100),
  correo VARCHAR(100) UNIQUE,
  contrasena_hash VARCHAR(255),
  rol ENUM('estudiante', 'admin') DEFAULT 'estudiante',
  creado_en DATETIME DEFAULT CURRENT_TIMESTAMP
) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

-- Tabla de cursos
CREATE TABLE cursos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  titulo VARCHAR(100),
  descripcion TEXT,
  creado_por INT,
  FOREIGN KEY (creado_por) REFERENCES usuarios(id)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

-- Relación usuarios-cursos
CREATE TABLE cursos_usuarios (
  usuario_id INT,
  curso_id INT,
  PRIMARY KEY (usuario_id, curso_id),
  FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
  FOREIGN KEY (curso_id) REFERENCES cursos(id)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

-- Tabla de exámenes
CREATE TABLE examenes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  curso_id INT,
  titulo VARCHAR(100),
  disponible_desde DATETIME,
  disponible_hasta DATETIME,
  FOREIGN KEY (curso_id) REFERENCES cursos(id)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

-- Tabla de preguntas
CREATE TABLE preguntas (
  id INT AUTO_INCREMENT PRIMARY KEY,
  examen_id INT,
  texto_pregunta TEXT,
  FOREIGN KEY (examen_id) REFERENCES examenes(id)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

-- Tabla de respuestas
CREATE TABLE respuestas (
  id INT AUTO_INCREMENT PRIMARY KEY,
  pregunta_id INT,
  texto_respuesta TEXT,
  es_correcta BOOLEAN,
  FOREIGN KEY (pregunta_id) REFERENCES preguntas(id)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

-- Tabla de respuestas del usuario
CREATE TABLE respuestas_usuarios (
  usuario_id INT,
  pregunta_id INT,
  respuesta_id INT,
  respondido_en DATETIME DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (usuario_id, pregunta_id),
  FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
  FOREIGN KEY (pregunta_id) REFERENCES preguntas(id),
  FOREIGN KEY (respuesta_id) REFERENCES respuestas(id)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

-- Tabla de notificaciones
CREATE TABLE notificaciones (
  id INT AUTO_INCREMENT PRIMARY KEY,
  usuario_id INT,
  mensaje TEXT,
  leido BOOLEAN DEFAULT FALSE,
  creado_en DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

-- Tabla de sesiones (para login)
CREATE TABLE sesiones (
  id INT AUTO_INCREMENT PRIMARY KEY,
  usuario_id INT,
  token VARCHAR(255),
  expira_en DATETIME,
  FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
