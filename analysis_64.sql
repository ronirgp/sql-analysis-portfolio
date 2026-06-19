SELECT employee_id, name, salary
FROM employees
WHERE salary <= 1500
AND employee_id > 1
ORDER BY salary ASC;
