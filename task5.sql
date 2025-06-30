CREATE DATABASE IF NOT EXISTS myDB;
USE myDB;
-- Drop child table (Orders) first
DROP TABLE IF EXISTS Orders;

-- Then drop parent table (Customers)
DROP TABLE IF EXISTS Customers;
-- Recreate Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    City VARCHAR(50)
);

-- Insert data
INSERT INTO Customers (CustomerID, CustomerName, City) VALUES
(1, 'Rahul Sharma', 'Delhi'),
(2, 'Anita Verma', 'Mumbai'),
(3, 'Karan Mehta', 'Chennai'),
(4, 'Sonal Gupta', 'Kolkata');

-- Recreate Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    Amount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Insert data
INSERT INTO Orders (OrderID, CustomerID, OrderDate, Amount) VALUES
(101, 1, '2025-06-25', 1500.00),
(102, 2, '2025-06-26', 2500.00),
(103, 1, '2025-06-27', 1200.00),
(104, 3, '2025-06-28', 3000.00);
SELECT 
    Customers.CustomerName,
    Orders.OrderDate,
    Orders.Amount
FROM 
    Customers
INNER JOIN 
    Orders ON Customers.CustomerID = Orders.CustomerID;
SELECT 
    Customers.CustomerName,
    Orders.OrderDate,
    Orders.Amount
FROM 
    Customers
LEFT JOIN 
    Orders ON Customers.CustomerID = Orders.CustomerID;
SELECT 
    Customers.CustomerName,
    Orders.OrderDate,
    Orders.Amount
FROM 
    Customers
LEFT JOIN 
    Orders ON Customers.CustomerID = Orders.CustomerID

UNION

SELECT 
    Customers.CustomerName,
    Orders.OrderDate,
    Orders.Amount
FROM 
    Customers
RIGHT JOIN 
    Orders ON Customers.CustomerID = Orders.CustomerID;
-- null case
INSERT INTO Customers (CustomerID, CustomerName, City)
VALUES (5, 'Ritika Singh', 'Jaipur');
