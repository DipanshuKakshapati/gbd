USE Day_10;

--creating employe table--
CREATE TABLE Employe(

    Id INT,
    Name VARCHAR(255),
    Department VARCHAR(255),
    Position VARCHAR(255),
    Salary INT
);

--dropping id colum from employe table--
ALTER TABLE Employe
DROP COLUMN Id;

--adding Id column with auto increment--
ALTER TABLE Employe
ADD Id INT NOT NULL IDENTITY(1,1) PRIMARY KEY;

--inseritng values in employe table--
INSERT INTO Employe(Name, Department, Position, Salary)
VALUES
('John', 'HR', 'HR', 40000),
('Maria', 'Marketing', 'Marketer', 20000),
('Bryan', 'IT', 'Software Engineer', 90000),
('Alex', 'IT', 'UI/UX Designer', 60000),
('Cruz', 'Food', 'Chef', 40000),
('Dan', 'Lead', 'Project Lead', 90000),
('Holmes', 'Marketing', 'Automation Expert', 40000),
('Claire', 'IT', 'Data Scientist', 120000),
('Mike', 'Finance', 'Strategist', 60000),
('Ederson', 'Finance', 'Financial Analyst', 40000),
('Loius', 'Marketing', 'Tinker', 20000),
('Harvey', 'Law', 'Lawyer', 100000),
('Dustin', 'Marketing', 'Automation Expert', 75000),
('Milley', 'IT', 'Software Engineer', 1400000),
('John', 'Marketing', 'Marketer', 20000);

SELECT * 
FROM Employe;

--creating employee table--
CREATE TABLE Employee(

    Id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    Name VARCHAR(255),
    Department VARCHAR(255),
    Position VARCHAR(255),
    Salary INT
);

--inserting values in employee table from employe table--
INSERT INTO Employee(Name, Department, Position, Salary)
SELECT Name, Department, Position, Salary 
FROM Employe;

SELECT *
FROM Employee;

--dropping employe table--
DROP TABLE Employe;

--updating a record in employee table--
UPDATE Employee
SET salary = 65000
WHERE Id = 2;

SELECT *
FROM Employee
WHERE Id = 2;

--deleting record haivng Id=3 in employee table--
DELETE FROM Employee
WHERE Id = 3;

SELECT *
FROM Employee
WHERE Id = 3;

SELECT *
FROM Employee;

--creating a temporary table to hold data without the Id column--
SELECT Name, Department, Position, Salary
INTO #TempEmployee
FROM Employee;

--removing records from employee table--
TRUNCATE TABLE Employee;

--reinserting data from the temporary table into the employee table--
INSERT INTO Employee(Name, Department, Position, Salary)
SELECT Name, Department, Position, Salary
FROM #TempEmployee;

--droping the temporary table
DROP TABLE #TempEmployee;

SELECT *
FROM Employee;

--selecting records having salary greater than 60000--
SELECT Id, Name, Salary 
FROM Employee
WHERE Salary > 60000

--inserting one new record in employee table--
INSERT INTO Employee(Name, Department, Position, Salary)
VALUES
('Adam', 'Operations', 'Manager', 70000);

SELECT *
FROM Employee;

--updating a record having ID=13 in employee table--
UPDATE Employee
SET Salary = 140000
WHERE Id = 13;

SELECT *
FROM Employee;
