USE Day_13;

CREATE TABLE [Order](
    order_no INT,
    purch_amt REAL,
    order_date DATE,
    customer_id INT,
    salesman_id INT,
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY(salesman_id) REFERENCES salesman(salesman_id),
    PRIMARY KEY(order_no)
);