SELECT employee_id, name, salary
FROM employees
WHERE salary >= 1300
OR employee_id = 1
ORDER BY salary DESC;
