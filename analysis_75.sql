SELECT employee_id, name, department
FROM employees
WHERE department = 'IT'
OR employee_id <= 2
ORDER BY employee_id ASC;
