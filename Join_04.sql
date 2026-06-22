SELECT employees.name,
       departments.department
FROM employees
JOIN departments
ON employees.employee_id = departments.employee_id
WHERE departments.department = 'Sales'
OR departments.department = 'Marketing';
