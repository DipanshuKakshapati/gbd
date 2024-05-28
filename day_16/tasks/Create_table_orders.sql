USE Day_16

CREATE TABLE orders(
    SaleID INT NOT NULL IDENTITY(1,1),
    Saleperson VARCHAR(255),
    SaleAmount INT,
    SaleDate DATE
);