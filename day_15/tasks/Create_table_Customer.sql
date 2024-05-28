USE Day_15;

CREATE TABLE Customer(
    customer_id INT,
    customer_name VARCHAR(255),
    city VARCHAR(255),
    grade INT,
    salesman_id INT,
    FOREIGN KEY(salesman_id) REFERENCES salesman(salesman_id),
    PRIMARY KEY(customer_id)
);