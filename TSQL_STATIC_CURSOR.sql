﻿
-- =============================================
-- Author:		Cosimo Caputo
-- Create date: 2024
-- Description:	Statischen Curosr aufnehmen
-- EXEC PRC_CURSOR_STATIC
-- =============================================
CREATE PROCEDURE [dbo].[PRC_CURSOR_STATIC] 
AS
BEGIN
	SET NOCOUNT ON;
	--DROP TABLE #temp_Person
--Erstelle temptable zur Aufnahme der ausgelesenen Daten
IF OBJECT_ID('tempdb..#temp_Person') IS NULL
CREATE TABLE #temp_Person
(
	pkid			INT IDENTITY(1,1)   NOT NULL, 
	temp_id			INT 			NULL, 
	temp_Prename	VARCHAR(200)			NULL, 
	temp_Lastname	VARCHAR(200)			NULL,
	temp_Adress		VARCHAR(max)		NULL,
	temp_PLZ		INT			NULL,
	temp_City		VARCHAR(300)		NULL,
	temp_LDTS		DATE			NULL
)
ELSE
TRUNCATE TABLE #temp_Person


-- CURSOR DEKLARIEREN
DECLARE cu CURSOR LOCAL STATIC	
FOR
-- Das Füllen der Daten
SELECT ID
      ,Prename
      ,Lastname
      ,Adress
      ,PLZ
      ,City
      ,LDTS
  FROM [dbo].[T_Person]
-- CURSOR ÖFFNEN			
OPEN cu	
-- Deklaration der Variablen für Cursor
DECLARE
	@CU_ID			AS INT,
	@CU_Prename		AS varchar(200),
	@CU_Lastname		AS varchar(200),
	@CU_Adress		AS varchar(max),
	@CU_PLZ			AS INT, 
	@CU_City		AS VARCHAR(300), 
	@CU_LDTS		AS DATETIME
-- Fetch (Schritweise Variable füllen)
FETCH NEXT FROM cu 
	INTO  @CU_ID, @CU_Prename, @CU_Lastname, @CU_Adress, @CU_PLZ, @CU_City, @CU_LDTS
-- Schleife durchlaufen bis Tabellen ende 
WHILE @@fetch_status = 0
BEGIN
-- Anweisung eingefügt die benötigt wird und bei Erfolg schreibe in Tabelle
IF (ISNUMERIC(@CU_PLZ) = 1 AND LEN(@CU_PLZ) <=5 )
BEGIN
	INSERT INTO #temp_Person
		(
			temp_id, 
			temp_Prename,
			temp_Lastname,
			temp_Adress,
			temp_PLZ,
			temp_City,
			temp_LDTS
		) VALUES 
		(
			@CU_ID, 
			@CU_Prename, 
			@CU_Lastname, 
			@CU_Adress, 
			@CU_PLZ, 
			@CU_City, 
			@CU_LDTS
		)
END
-- Fetch wiederholen (Endlosschleife vermeiden)
FETCH NEXT FROM cu 
	INTO @CU_ID, @CU_Prename, @CU_Lastname, @CU_Adress, @CU_PLZ, @CU_City, @CU_LDTS	
END
-- Cursor schliessen
close cu
-- Cursor trennen und Freigabe der Ressource
DEALLOCATE cu
-- Ausgabe der erfolgreich Eingelesenen Daten
SELECT * FROM #temp_Person 
END
GO
