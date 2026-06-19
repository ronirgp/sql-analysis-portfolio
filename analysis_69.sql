SELECT employee_id, name, department
FROM employees
WHERE employee_id <= 3
OR department = 'IT'
ORDER BY employee_id DESC;
