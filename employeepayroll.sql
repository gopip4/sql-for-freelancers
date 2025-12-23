-- Employee Payroll System

CREATE DATABASE payroll_db;
USE payroll_db;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_name VARCHAR(50),
    salary DECIMAL(10,2),
    department VARCHAR(30)
);

INSERT INTO employees (emp_name, salary, department) VALUES
('Anil', 45000, 'HR'),
('Meena', 60000, 'IT'),
('Kiran', 55000, 'Finance');

-- Monthly payroll
SELECT emp_name, salary
FROM employees;

-- Total salary expense
SELECT SUM(salary) AS total_salary
FROM employees;

-- Highest paid employee
SELECT emp_name, salary
FROM employees
ORDER BY salary DESC
LIMIT 1;
