-- Departments Table (Parent table)
CREATE TABLE Departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL,
    location VARCHAR(100)
);

-- Employees Table (Child of Departments)
CREATE TABLE Employees (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    department_id INT,
    CONSTRAINT fk_department
        FOREIGN KEY(department_id) 
        REFERENCES Departments(department_id)
        ON DELETE SET NULL
);

-- Salaries Table (Child of Employees)
CREATE TABLE Salaries (
    salary_id SERIAL PRIMARY KEY,
    employee_id INT NOT NULL,
    salary_amount DECIMAL(10, 2) NOT NULL,
    effective_date DATE DEFAULT CURRENT_DATE,
    CONSTRAINT fk_employee
        FOREIGN KEY(employee_id) 
        REFERENCES Employees(employee_id)
        ON DELETE CASCADE
);