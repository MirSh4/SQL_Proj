
-- Create stored procedure for Q6
DELIMITER //
CREATE PROCEDURE GetHighSalaryEmployees()
BEGIN
SELECT CONCAT_WS(' ', employees.FirstName, employees.LastName) AS FullName,
employees.Salary,
departments.DepartmentName
FROM employees
JOIN departments USING (DepartmentID)
JOIN (
SELECT AVG(Salary) AS AverageSalary, DepartmentID
FROM employees
GROUP BY DepartmentID
) AS avgSalaryTable USING (DepartmentID)
WHERE employees. Salary > avgSalaryTable.AverageSalary;
END //
CALL GetHighSalaryEmployees();


#########################################################################

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
    
    
    
    
    
    
    