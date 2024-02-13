
--DDL Commands

-- CREATE
-- ALTER
-- DROP
--TRUNCATE?
CREATE DATABASE Course

USE Course

CREATE TABLE Students
(
	Id INT,
	Name NVARCHAR(20),
	Surname NVARCHAR(20),
	Point TINYINT
)
--DROP TABLE
DROP TABLE Students

--ADD COLUMN INTO TABLE
ALTER TABLE Students
ADD Email NVARCHAR(100)

--CHANGE COLUMN TYPE IN TABLE
ALTER TABLE Students
ALTER COLUMN Email NVARCHAR(50)

--DROP COLUMN FROM TABLE
ALTER TABLE Students
DROP COLUMN Email

-- DML COMANDS:
--INSERT
--UPDATE
--DELETE


SELECT * FROM Students

INSERT INTO Students 
VALUES
(5,'Name5','Surname5',46),
(6,'Name6','Surname6',50),
(7,'Name7','Surname7',86)

INSERT INTO Students (Id,Name,Surname)
VALUES 
(9,'Name9','Surname9')

UPDATE Students
SET Point=50 WHERE Point<50

DELETE FROM Students WHERE Point IS NULL

DELETE FROM Students
TRUNCATE TABLE Students


SELECT Id,Name,Surname,Point FROM Students

SELECT Id,Name FROM Students

SELECT Id,NAME+' '+SURNAME as Fullname, Point FROM Students

SELECT Id,Name,Surname,Point FROM Students 
WHERE Point>70

SELECT * FROM Students WHERE Point = 50


SELECT * FROM Students
WHERE Point>50 AND Point<90

SELECT * FROM Students
WHERE Point<50 OR Point>90

SELECT * FROM Students
WHERE Point>=50 AND Point<=90

SELECT * FROM Students
WHERE Point BETWEEN 50 AND 90 

SELECT * FROM Students
WHERE Point IN(50,90,86)

SELECT * FROM Students
WHERE NAME NOT LIKE 'n%'

SELECT * FROM Students
WHERE LEN(Surname)>7

SELECT COUNT(Id) FROM Students WHERE POINT >80

SELECT AVG(POINT) FROM Students







