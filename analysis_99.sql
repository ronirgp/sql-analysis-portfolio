SELECT employee_id, name, department
FROM employees
WHERE department = 'Marketing'
OR employee_id >= 4
ORDER BY employee_id DESC;
