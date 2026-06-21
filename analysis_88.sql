SELECT employee_id, name, salary
FROM employees
WHERE salary < 2000
AND employee_id >= 2
ORDER BY salary ASC;
