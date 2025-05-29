-- CREATE DATABASE Northwind;
-- USE Northwind;

CREATE TABLE Customers (
    CustomerID INT,
    CustomerName VARCHAR(255),
    Address VARCHAR(255),
    City VARCHAR(255),
    PostalCode VARCHAR(10),
    Country VARCHAR(255)
);

CREATE TABLE Employees (
    EmployeeID INT,
    LastName VARCHAR(255),
    FirstName VARCHAR(255),
    BirthDate DATE,
    Photo BLOB,
    Notes TEXT
);

CREATE TABLE Orders (
    OrderID INT,
    CustomerID INT,
    EmployeeID INT,
    OrderDate DATE,
    ShipperID INT
);

CREATE TABLE OrderDetails (
    OrderDetailID INT,
    OrderID INT,
    ProductID INT,
    Quantity INT
);

CREATE TABLE Products (
    ProductID INT,
    ProductName VARCHAR(255),
    SupplierID INT,
    CategoryID INT,
    Unit VARCHAR(255),
    Price DECIMAL(10, 2)
);

CREATE TABLE Categories (
    CategoryID INT,
    CategoryName VARCHAR(255),
    Description TEXT
);

CREATE TABLE Suppliers (
    SupplierID INT,
    SupplierName VARCHAR(255),
    ContactName VARCHAR(255),
    Address VARCHAR(255),
    City VARCHAR(255),
    PostalCode VARCHAR(10),
    Country VARCHAR(255),
    Phone VARCHAR(20)
);

CREATE TABLE Shippers (
    ShipperID INT,
    ShipperName VARCHAR(255),
    Phone VARCHAR(20)
);
