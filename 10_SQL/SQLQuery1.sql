
--employee details , is an table name
Create database employee_details

-- this s done to sleect adn use the created data tabel or db
use employee_details

--VARCHAR(30) is a SQL data type declaration that defines a variable-length character string with a 
--maximum capacity of 30 characters. It is commonly used when storing text values of varying 
--lengths but with an upper limit. .. 30 can also be 50... this value dtermine the number 
CREATE TABLE employees (
	EmployeeId INT PRIMARY KEY ,
	FirstName VARCHAR(50),
	LastName VARCHAR(50),
	Department VARCHAR(50),
	Salary DECIMAL (10,2),
	HireDate Date

)

INSERT INTO employees (EmployeeID, FirstName, LastName, Department, Salary, HireDate)
VALUES
(1, 'John', 'Doe', 'HR', 50000.00, '2020-01-15'),
(2, 'Jane', 'Smith', 'Finance', 60000.00, '2019-03-23'),
(3, 'Alice', 'Johnson', 'IT', 75000.00, '2021-07-10'),
(4, 'Bob', 'Brown', 'Marketing', 55000.00, '2018-09-30'),
(5, 'Charlie', 'Davis', 'IT', 70000.00, '2022-02-20');