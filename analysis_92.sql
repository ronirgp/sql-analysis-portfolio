SELECT employee_id, name, salary
FROM employees
WHERE salary >= 1300
AND employee_id <> 2
ORDER BY salary DESC;
