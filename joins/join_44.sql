SELECT employees.name,
       departments.department,
       salaries.salary
FROM employees
JOIN departments
ON employees.employee_id = departments.employee_id
JOIN salaries
ON employees.employee_id = salaries.employee_id
WHERE departments.department <> 'Sales'
AND salaries.salary >= 1300
ORDER BY salaries.salary ASC;
