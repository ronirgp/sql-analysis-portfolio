SELECT employee_id, name, salary
FROM employees
WHERE salary >= 1500
OR employee_id = 4
ORDER BY employee_id ASC;
