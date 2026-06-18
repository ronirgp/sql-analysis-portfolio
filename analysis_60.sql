SELECT employee_id, name, department
FROM employees
WHERE department = 'Sales'
OR department = 'Marketing'
ORDER BY employee_id DESC;
