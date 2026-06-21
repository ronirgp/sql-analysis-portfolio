SELECT employee_id, name, department
FROM employees
WHERE department <> 'Sales'
AND employee_id <= 3
ORDER BY employee_id DESC;
