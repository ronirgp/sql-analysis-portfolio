SELECT employee_id, name, salary
FROM employees
WHERE salary <= 1500
AND department <> 'Sales'
ORDER BY salary DESC;
