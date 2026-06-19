SELECT employee_id, name, department
FROM employees
WHERE department = 'Sales'
OR employee_id = 4
ORDER BY employee_id ASC;
