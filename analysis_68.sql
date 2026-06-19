SELECT employee_id, name, salary
FROM employees
WHERE salary >= 1300
AND department <> 'Marketing'
ORDER BY salary ASC;
