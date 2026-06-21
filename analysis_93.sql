SELECT employee_id, name, department
FROM employees
WHERE department <> 'Marketing'
AND employee_id > 1
ORDER BY employee_id ASC;
