CREATE TABLE [dbo].[alumnos] (
    [alumno_id]        INT             IDENTITY (1, 1) NOT NULL,
    [matricula]        VARCHAR (20)    NOT NULL,
    [nombre]           VARCHAR (100)   NOT NULL,
    [edad]             TINYINT         NOT NULL,
    [tetramestre]      TINYINT         NOT NULL,
    [promedio]         DECIMAL (4, 2)  NOT NULL,
    [pago_tetramestre] DECIMAL (10, 2) DEFAULT ((0.00)) NOT NULL,
    [carrera_id]       VARCHAR (10)    NOT NULL
);


GO

