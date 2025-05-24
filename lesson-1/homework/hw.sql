--Easy
--DATA-facts and statistics collected together for reference or analysis.
--DATABASE-a structured set of data held in a computer, especially one that is accessible in various ways.
--Relational database is a collection of information that organizes data in predefined relationships where data is stored in one or more tables (or "relations") of columns and rows, making it easy to see and understand how different data structures relate to each other.
--Table is the basic element of a relational database.

--Medium
CREATE DATABASE SchoolDB;
CREATE TABLE Students(
	StudentID INT PRIMARY KEY,
	Name VARCHAR(50),
	Age INT
);
--SQL Server is the software that handles the database and the tables. 
--SQL Server Management Studio is the interface between the user and the database. 
--Structured query language (SQL) is a programming language for storing and processing information in a relational database.

--Hard
--DDL	(Data Definition Language)Makes or changes tables. example:	CREATE , ALTER , DROP.
--DML	(Data Manipulation Language)Adds, changes, and deletes data.	example: INSERT , UPDATE , DELETE.
--DQL	(Data Query Language)Asks questions to get data.	example: SELECT.
--DCL	(Data Control Language)Controls who can access data.	example: GRANT ,REVOKE.
--TCL	(Transaction Control Language)	Manages changes as one group.	example: COMMIT, ROLLBACK.

INSERT INTO Students (StudentID,Name,Age)
VALUES (1,'Sophie',30),
(2,'Alice',29),
(3,'Mike',28);

/*Restore Adventure works 
To download from Telegram, save as and load the Program files section from the C drive and load the Microsoft SQL Server section 
enter, enter the MSSQL section, find the Backup section and enter it and it will ask for permission to enter the Backup and click the Continue button, click the Save button and the download process from Telegram is complete, to restore in SSMS 
go to the database section in Object Explorer and right-click, select the Restore database section, set the Source section to Device and click " ..." on it. 
Click on the Add section. Select the file you downloaded from Telegram and click the OK button. and click the OK button again 2 times and click the OK button and the restore process is complete. 
Now we can see AdventureWorks2022 in the database list*/
