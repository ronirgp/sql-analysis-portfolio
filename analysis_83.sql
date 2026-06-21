SELECT employee_id, name, department
FROM employees
WHERE department <> 'Marketing'
AND employee_id >= 2
ORDER BY employee_id DESC;
