USE Day_10;

--creating customers table--
CREATE TABLE Customers (
    Customer_Id VARCHAR(50) NOT NULL PRIMARY KEY,
    Name VARCHAR(255)
);

--creating orders table--
CREATE TABLE Orders (
    Order_Id VARCHAR(50) NOT NULL PRIMARY KEY,
    Customer_Id VARCHAR(50) NOT NULL,
    Order_Date DATE,
    FOREIGN KEY (Customer_Id) REFERENCES Customers(Customer_Id)
);

--inserting records in customers table--
INSERT INTO Customers (Customer_Id, Name)
VALUES
('C-1','John'),
('C-2','Jane'),
('C-3','Michael'),
('C-4','Emily'),
('C-5','Doe'),
('C-6','Smith'),
('C-7','Johnson'),
('C-8','Davis');

--inserting records in orders table--
INSERT INTO Orders (Order_Id, Customer_Id, Order_Date)
VALUES
('O-1', 'C-1', '2023-05-01'),
('O-2', 'C-2', '2023-05-03'),
('O-3', 'C-3', '2023-05-05'),
('O-4', 'C-4', '2023-05-07'),
('O-5', 'C-5', '2023-05-09'),
('O-6', 'C-4', '2023-05-11'),
('O-7', 'C-6', '2023-05-13'),
('O-8', 'C-4', '2023-05-15'),
('O-9', 'C-7', '2023-05-13'),
('O-10', 'C-8', '2023-05-15');

--combining orders and customers in a table--
SELECT o.Order_Id, c.Customer_Id, c.Name, o.Order_Date
FROM Customers c
FULL OUTER JOIN Orders o on c.Customer_Id = o.Customer_Id;
