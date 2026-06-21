SELECT employee_id, name, department
FROM employees
WHERE employee_id < 4
AND department <> 'Sales'
ORDER BY employee_id ASC;
