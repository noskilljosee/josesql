CREATE TRIGGER dbo.trg_alumnos_correo
ON dbo.alumnos
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE a
    SET correo = CONCAT(i.matricula, '@uttn.edu.mx')
    FROM dbo.alumnos a
    INNER JOIN inserted i ON a.alumno_id = i.alumno_id
    WHERE i.correo IS NULL;
END;