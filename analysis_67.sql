SELECT employee_id, name, department
FROM employees
WHERE department <> 'IT'
OR salary > 1800
ORDER BY employee_id ASC;
