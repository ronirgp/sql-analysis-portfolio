SELECT employee_id, name, salary
FROM employees
WHERE salary > 1200
OR department = 'Marketing'
ORDER BY salary DESC;
