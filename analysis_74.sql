SELECT employee_id, name, salary
FROM employees
WHERE employee_id <> 2
AND salary >= 1300
ORDER BY salary DESC;
