SELECT SUM(salary) AS total_payroll
FROM employees;

SELECT COUNT(*) AS total_it_employees
FROM employees
WHERE department = 'IT';

SELECT SUM(salary) AS total_it_salary
FROM employees
WHERE department = 'IT';
