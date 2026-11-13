CREATE VIEW dbo.vw_alumnos_carrera
AS
SELECT a.alumno_id, a.matricula, a.nombre, c.nombre AS carrera
FROM dbo.alumnos a
INNER JOIN dbo.carreras c ON a.carrera_id = c.carreras_id;