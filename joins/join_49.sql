SELECT employees.name,
       departments.department,
       salaries.salary
FROM employees
JOIN departments
ON employees.employee_id = departments.employee_id
JOIN salaries
ON employees.employee_id = salaries.employee_id
WHERE departments.department = 'IT'
OR salaries.salary = 1500
ORDER BY salaries.salary DESC;
