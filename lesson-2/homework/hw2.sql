create database homework2
use homework2
CREATE TABLE Employees (
    EmpID INT,
    Name VARCHAR(50),
    Salary DECIMAL(10, 2)
);
INSERT INTO Employees (EmpID, Name, Salary)
VALUES 
    (1, 'Ciera Watson', 58000.00),
    (2, 'David Patrson', 91000.00),
	(3,'Endrew Adam', 88000.00);
	UPDATE Employees
SET Salary = 7000.00
WHERE EmpID = 1;
DELETE FROM Employees
WHERE EmpID = 2;
--DELETE
--Removes specific rows from a table based on a WHERE clause.

--Can be rolled back (if within a transaction).

--Triggers can be fired.

--Syntax: DELETE FROM table_name WHERE condition;

--TRUNCATE
--Removes all rows from a table quickly and without logging each row.

--Cannot delete specific rows.

--Cannot be rolled back in some databases.

--Resets identity columns.

--Syntax: TRUNCATE TABLE table_name;

--DROP
--Completely removes a table (or other database object) from the database.

--Deletes table structure and data.

--Cannot be rolled back.

--Syntax: DROP TABLE table_name;
ALTER TABLE Employees
ALTER COLUMN Name VARCHAR(100);
ALTER TABLE Employees
ALTER COLUMN Salary FLOAT;
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);
 TRUNCATE TABLE Employees;
 CREATE TABLE Departments (
    DepartmentID INT,
    DepartmentName VARCHAR(50));
ALTER TABLE Departments
ADD Salary FLOAT;
INSERT INTO Departments (DepartmentID, DepartmentName, Salary)
VALUES
(1, 'Human Resources', 8800),
(2, 'Finance', 6000),
(3, 'Engineering', 4000),
(4, 'Management', 5000),
(5, 'IT Support', 10000);
UPDATE Departments
SET DepartmentName ='Management'
WHERE Salary>8000;
DELETE FROM Employees;

ALTER TABLE Employees
DROP COLUMN Department;
EXEC sp_rename 'Employees', 'StaffMembers';
DROP TABLE Departments;
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10, 2),
    StockQuantity INT
);
ALTER TABLE Products
ADD CONSTRAINT chk_price_positive
CHECK (Price > 0);
ALTER TABLE Products
ADD StockQuantity INT DEFAULT 50;
EXEC sp_rename 'Products.Category', 'ProductCategory';
INSERT INTO Products (ProductID, ProductName, ProductCategory, Price, StockQuantity)
VALUES (1, 'Wireless Mouse', 'Electronics', 25.99, 100),
 (2, 'Notebook', 'Stationery', 3.50, 200)
 (3, 'Water Bottle', 'Kitchen', 12.00, 75)
 (4, 'Desk Lamp', 'Furniture', 45.25, 40),
 (5, 'Bluetooth Speaker', 'Electronics', 89.99, 60);
SELECT*INTO Products_Backup
FROM Products;
EXEC sp_rename 'Products', 'Inventory';
ALTER TABLE Inventory
ALTER COLUMN Price FLOAT;
ALTER TABLE Inventory
ADD ProductCode INT IDENTITY(1000, 5);


