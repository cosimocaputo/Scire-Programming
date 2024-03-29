
-- =============================================
-- Author:	Cosimo Caputo
-- Create date: 2024
-- Description:	TempDB
-- EXECUTE [dbo].[spTempDBDummy] 3

-- =============================================
CREATE PROCEDURE [dbo].[spTempDBDummy] 
	-- Parameter
	@PARAM AS INT
AS
-- Variablen deklaration
DECLARE @Dummy_1 AS varchar(max),
        @Dummy_2 AS varchar(max)
-- keine Variablen
BEGIN
	SET NOCOUNT ON;
-- Variablen durch Abfrage mit Daten füllen
SELECT @Dummy_1 = Prename,
       @Dummy_2 = Lastname
FROM dbo.T_Person
WHERE ID = @PARAM
-- Temporäre Tabell erstellen
CREATE TABLE #TempDB (IDtemp int IDENTITY(1,1) NOT NULL,temp_0 varchar(max) NULL,temp_1 varchar(max) NULL)
 
-- Daten in die TempDB füllen
INSERT INTO #TempDB(temp_0,temp_1) VALUES (@Dummy_1, @Dummy_2)
 
-- Anweisungen
-- Hier kann man mit den Daten der TemDB Spielen und diese entsprechend manipulieren
 
-- Ausgabe der Temp DB
SELECT * FROM #TempDB
RETURN
END
GO
