SELECT employee_id, name, department
FROM employees
WHERE department = 'IT'
OR department = 'Sales'
ORDER BY employee_id ASC;
