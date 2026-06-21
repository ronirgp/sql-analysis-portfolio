SELECT employee_id, name, salary
FROM employees
WHERE salary > 1200
AND employee_id <> 3
ORDER BY employee_id DESC;
