-- Retrieve employee details with department info
SELECT e.first_name, e.last_name, d.department_name, d.LOCATION
FROM Employees e
JOIN Departments d ON e.department_id = d.department_id;

-- Total salary expenditure per department
SELECT d.department_name, SUM(s.salary_amount) AS total_expenditure
FROM departments d
JOIN employees e ON e.department_id = d.department_id
JOIN salaries s ON s.employee_id = e.employee_id
GROUP BY d.department_name;

-- Average salary of employees
SELECT AVG(salary_amount) AS average_salary FROM Salaries;


