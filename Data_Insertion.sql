INSERT INTO Departments VALUES (1, 'HR', 'Cairo');
INSERT INTO Departments VALUES (2, 'IT', 'Giza');

INSERT INTO Employees VALUES (1, 'Ahmed', 'Ali', 1, '2022-01-10', 'Manager', 80000);
INSERT INTO Employees VALUES (2, 'Sara', 'Samer', 2, '2023-03-15', 'Developer', 90000);
INSERT INTO Employees VALUES (3, 'Omar','Mohamed', 1, '2023-05-15', 'Developer', 90000);

INSERT INTO Projects VALUES (1, 'Project A', '2023-01-01', '2023-06-30', 150000.00);
INSERT INTO Projects VALUES (2, 'Project B', '2023-03-01', '2023-12-31', 250000.00);
INSERT INTO Projects VALUES (3, 'Project C', '2023-05-15', NULL, 100000.00);


INSERT INTO Assignments VALUES (1, 1, 1, 'Project Manager', '2023-01-10');
INSERT INTO Assignments VALUES (2, 2, 1, 'Developer', '2023-01-15');
INSERT INTO Assignments VALUES (3, 3, 2, 'Developer', '2023-03-20');
INSERT INTO Assignments VALUES (4, 1, 3, 'Consultant', '2023-05-20');
INSERT INTO Assignments VALUES (5, 2, 3, 'Lead Developer', '2023-06-01');

INSERT INTO Customers VALUES (1, 'Ahmed Samy', '1234567890', 'ahmed@example.com', '123 Main St');
INSERT INTO Customers VALUES (2, 'Mohamed Ashraf', '9876543210', 'mohamed@example.com', '456 Elm St');
INSERT INTO Customers VALUES (3, 'Sara Ali', '5551234567', 'sara@example.com', '789 Oak St');

INSERT INTO Orders VALUES (1, 1, '2023-07-01', 250.00);
INSERT INTO Orders VALUES (2, 2, '2023-07-02', 150.00);
INSERT INTO Orders VALUES (3, 3, '2023-07-03', 300.00);
INSERT INTO Orders VALUES (4, 1, '2023-07-04', 100.00);
INSERT INTO Orders VALUES (5, 2, '2023-07-05', 200.00);

INSERT INTO Products VALUES (1, 'Laptop', 'Electronics', 1200.00, 50);
INSERT INTO Products VALUES (2, 'Smartphone', 'Electronics', 800.00, 100);
INSERT INTO Products VALUES (3, 'Desk Chair', 'Furniture', 150.00, 200);



INSERT INTO OrderDetails VALUES (1, 1, 1, 1, 1200.00);
INSERT INTO OrderDetails VALUES (2, 2, 2, 2, 1600.00);
INSERT INTO OrderDetails VALUES (3, 3, 3, 1, 150.00);
INSERT INTO OrderDetails VALUES (4, 4, 2, 1, 800.00);
INSERT INTO OrderDetails VALUES (5, 5, 1, 1, 1200.00);


