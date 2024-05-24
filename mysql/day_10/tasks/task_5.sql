USE Day_10;

--creating a managers table--
CREATE TABLE Managers(
    Manager_Id VARCHAR(255) NOT NULL PRIMARY KEY,
    Manager_Name VARCHAR(255)
);

--inserting records in the managers table--
INSERT INTO Managers(Manager_Id, Manager_Name)
VALUES
('M-1', 'Sofia.M'),
('M-2', 'Avneet.M'),
('M-3', 'Chris.M'),
('M-4', 'Dan.M'),
('M-5', 'Dino.M'),
('M-6', 'Samantha.M'),
('M-7', 'Specter.M');

SELECT *
FROM Managers;

--creating departments table--
CREATE TABLE Departments(
    Department_Id VARCHAR(255) NOT NULL PRIMARY KEY,
    Department_Name VARCHAR(255),
    Manager_Id VARCHAR(255),
    FOREIGN KEY (Manager_Id) REFERENCES Managers(Manager_Id)
);

--inserting records in the departments table--
INSERT INTO Departments(Department_Id, Department_Name, Manager_ID)
VALUES
('D-1', 'HR', 'M-1'),
('D-2', 'Marketing', 'M-2'),
('D-3', 'IT', 'M-3'),
('D-4', 'Food', 'M-4'),
('D-5', 'Lead', 'M-5'),
('D-6', 'Finance', 'M-6'),
('D-7', 'Law', 'M-7');

--dropping Depertment column in employee table--
ALTER TABLE Employee
DROP COLUMN Department;

--adding Department_Id column in employee table--
ALTER TABLE Employee
ADD Department_Id VARCHAR(255);

--removing records from the employee table--
TRUNCATE TABLE Employee;

--inserting records in the employee table--
INSERT INTO Employee(Name, Department_Id, Position, Salary)
VALUES
('John', 'D-1', 'HR', 40000),
('Maria', 'D-2', 'Marketer', 20000),
('Bryan', 'D-3', 'Software Engineer', 90000),
('Alex', 'D-3', 'UI/UX Designer', 60000),
('Cruz', 'D-4', 'Chef', 40000),
('Dan', 'D-5', 'Project Lead', 90000),
('Holmes', 'D-2', 'Automation Expert', 40000),
('Claire', 'D-3', 'Data Scientist', 120000),
('Mike', 'D-6', 'Strategist', 60000),
('Ederson', 'D-6', 'Financial Analyst', 40000),
('Loius', 'D-2', 'Tinker', 20000),
('Harvey', 'D-7', 'Lawyer', 100000),
('Dustin', 'D-2', 'Automation Expert', 75000),
('Milley', 'D-3', 'Software Engineer', 1400000),
('John', 'D-2', 'Marketer', 20000);

SELECT *
FROM Employee;

--creating a employees table--
CREATE TABLE Employees(
    Id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    Employee_Name VARCHAR(255),
    Department_Id VARCHAR(255),
    Position VARCHAR(255),
    Salary INT,
    FOREIGN KEY (Department_Id) REFERENCES Departments(Department_Id)
);

--inserting records in the employees table--
INSERT INTO Employees(Employee_Name, Department_Id, Position, Salary)
SELECT Name, Department_Id, Position, Salary 
FROM Employee;

SELECT *
FROM Employees;

--dropping employee table--
DROP TABLE Employee;

--filtering employees, there departments, and their managers
SELECT e.Employee_Name, d.Department_Name, m.Manager_Name
FROM Employees e 
FULL OUTER JOIN Departments d ON e.Department_Id = d.Department_Id
FULL OUTER JOIN Managers m ON d.Manager_ID = m.Manager_Id