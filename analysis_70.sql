SELECT employee_id, name, salary
FROM employees
WHERE employee_id >= 2
AND salary < 2000
ORDER BY employee_id ASC;
