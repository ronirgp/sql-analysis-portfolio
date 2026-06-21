SELECT employee_id, name, salary
FROM employees
WHERE salary <= 1500
OR employee_id = 3
ORDER BY salary DESC;
