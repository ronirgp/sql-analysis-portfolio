SELECT employee_id, name, department
FROM employees
WHERE department = 'Marketing'
OR salary > 1800
ORDER BY employee_id ASC;
