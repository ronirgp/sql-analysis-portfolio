SELECT COUNT(*) AS total_employees
FROM employees;

SELECT AVG(salary) AS average_salary
FROM employees;

SELECT MAX(salary) AS highest_salary
FROM employees;

SELECT department, COUNT(*) AS total
FROM employees
GROUP BY department;
