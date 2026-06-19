SELECT employee_id, name, department
FROM employees
WHERE employee_id <> 3
AND department = 'IT'
ORDER BY employee_id ASC;
