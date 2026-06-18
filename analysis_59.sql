SELECT employee_id, name, salary
FROM employees
WHERE salary < 1300
OR salary > 1500
ORDER BY salary ASC;
