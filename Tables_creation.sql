create database companyy;

use companyy;

    ####Employees, Departments####

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY, 
    FirstName VARCHAR(20) NOT NULL,
    LastName VARCHAR(20) NOT NULL,
    DepartmentID INT,
    HireDate DATE NOT NULL,
    Position VARCHAR(50),
    Salary DECIMAL(10,2) CHECK (Salary > 0)
    );

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY, 
    DepartmentName VARCHAR(20) NOT NULL,
    Location VARCHAR(100)
    );


   ####Projects, Assignments####
    

CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(50) NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE,
    Budget DECIMAL(15, 2) CHECK (Budget > 0)
);

CREATE TABLE Assignments (
    AssignmentID INT PRIMARY KEY,
    EmployeeID INT,
    ProjectID INT,
    Role VARCHAR(50),
    AssignmentDate DATE NOT NULL
    
);



  ####Customers, Orders####
    
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50) NOT NULL,
    ContactNumber VARCHAR(20),
    Email VARCHAR(50),
    Address VARCHAR(100)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE NOT NULL,
    TotalAmount DECIMAL(15, 2) CHECK (TotalAmount >= 0)
);

 ####Products, OrderDetails####



CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50) NOT NULL,
    Category VARCHAR(50),
    Price DECIMAL(10, 2) CHECK (Price >= 0),
    StockQuantity INT CHECK (StockQuantity >= 0)
);


CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT CHECK (Quantity > 0),
    UnitPrice DECIMAL(10, 2) CHECK (UnitPrice >= 0)
    
);


