SELECT employee_id, name, department
FROM employees
WHERE employee_id > 2
AND department = 'IT'
ORDER BY employee_id DESC;
