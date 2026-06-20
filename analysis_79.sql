SELECT employee_id, name, department
FROM employees
WHERE department = 'IT'
AND employee_id < 4
ORDER BY employee_id ASC;
