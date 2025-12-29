-- Select all employees
SELECT * FROM Employees;

-- Select employees based on their department ID
SELECT * FROM Employees WHERE department_id = 1;

-- Select employees with a salary greater than 70.000
SELECT e.first_name, e.last_name, s.salary_amount
FROM Employees e
JOIN Salaries s ON e.employee_id = s.employee_id 
WHERE s.salary_amount > 70000;

-- Delete an employee record 
DELETE FROM Employees WHERE employee_id = 5;




