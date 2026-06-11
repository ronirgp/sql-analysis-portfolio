SELECT MIN(salary) AS lowest_salary
FROM employees;

SELECT MAX(salary) AS highest_salary
FROM employees;

SELECT *
FROM employees
ORDER BY salary ASC;

SELECT *
FROM employees
ORDER BY salary DESC;
