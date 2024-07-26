
-- Employee Details with Function Manipulation

select upper(firstName) as Fname,lower(Lastname)as lname,length(position) as "Length of title" , DepartmentName from employees
join departments
using (DepartmentID);

-- Department Budget Summary

select Departmentname,count(DepartmentID) as numOfEmpInDept,round(sum(salary)) as salaryExpenditure from employees 
join departments
using(Departmentid)
group by(employees.departmentID);

-- Project Assignments

select upper(projectname) as "Project Name",
concat_ws(' ',employees.firstname,employees.lastname) as "Full Name",
role from assignments
join projects
using (projectid)
join employees 
using (employeeid);

-- Customer Order Analysis

select lower(customerName) as "Customer name", count(orders.customerID) as "amount of orders",sum(totalamount) as "total amout spent" from orders
join customers
using (customerid)
group by(orders.CustomerID);


-- Product Details Extraction

select left(ProductName,10) as "Product Name",left(ProductName,2) as Category, sum(Quantity) as "total Quantity"
from products
join orderdetails
using (productid)
group by (products.ProductId);

-- High Salary Employees in Specific Departments
select concat_ws(" ",employees.firstname,employees.lastname) as fullName,salary,departmentname 
from employees
join departments
using (departmentid)
join (select avg(salary) as averageSalary,departmentid from employees group by departmentid) as avgsalaryTable
using( departmentid)
where salary>averageSalary;

DELETE a
FROM Assignments a
JOIN Employees e ON a.EmployeeID = e.EmployeeID
JOIN Departments d ON e.DepartmentID = d.DepartmentID
WHERE d.DepartmentName = 'IT';

DELETE p
FROM Projects p
JOIN Assignments a ON p.ProjectID = a.ProjectID
JOIN Employees e ON a.EmployeeID = e.EmployeeID
JOIN Departments d ON e.DepartmentID = d.DepartmentID
WHERE d.DepartmentName = 'IT';


#########################################################################





SELECT AVG(salary_count) 
    FROM (
        SELECT COUNT(Salary) AS salary_count
        FROM employees
    ) AS salary_counts;
    
    
########################################################################
DELIMITER //

CREATE FUNCTION CheckSalary(salary DECIMAL(10, 2)) 
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
    DECLARE avg_salary DECIMAL(10, 2);
    DECLARE result VARCHAR(20);

    -- Calculate the average salary
    SELECT AVG(Salary) INTO avg_salary FROM employees;

    -- Check if the salary is greater than the average salary
    IF salary > avg_salary THEN
        SET result = 'Higher than';
    ELSE
        SET result = 'Lower than';
    END IF;

    RETURN result;
END //

DELIMITER ;


    
    
    
SELECT 
    firstname,
    lastname,
    salary,
    CheckSalary(salary) AS "compared_to_avg_salary"
FROM employees;
##################################################################33


select firstname,lastname,departmentname from employees 
JOIN departments 
using (departmentID)
where departmentName="IT";
    
    
    
    
    
    
    





