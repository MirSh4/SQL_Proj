ALTER TABLE Employees
ADD CONSTRAINT FK_Dept
FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID);


ALTER TABLE Employees
ADD CONSTRAINT id_unique UNIQUE (EmployeeID);


ALTER TABLE Departments
ADD CONSTRAINT id_unique UNIQUE (DepartmentID);


ALTER TABLE Assignments
ADD CONSTRAINT FK_Emp
FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID);

ALTER TABLE Assignments
ADD CONSTRAINT FK_Proj
FOREIGN KEY (ProjectID) REFERENCES Projects(ProjectID);

ALTER TABLE Assignments
ADD CONSTRAINT id_unique UNIQUE (AssignmentID);

ALTER TABLE Projects
ADD CONSTRAINT id_unique UNIQUE (ProjectID);

ALTER TABLE Customers
ADD CONSTRAINT id_unique UNIQUE (CustomerID);

ALTER TABLE Orders
ADD CONSTRAINT id_unique UNIQUE (OrderID);

ALTER TABLE Orders
ADD CONSTRAINT FK_Cus
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID);



ALTER TABLE Products
ADD CONSTRAINT id_unique UNIQUE (ProductID);

ALTER TABLE OrderDetails
ADD CONSTRAINT id_unique UNIQUE (OrderDetailID);


ALTER TABLE OrderDetails
ADD CONSTRAINT FK_Order
FOREIGN KEY (OrderID) REFERENCES Orders(OrderID);

ALTER TABLE OrderDetails
ADD CONSTRAINT FK_Prod
FOREIGN KEY (ProductID) REFERENCES Products(ProductID);





