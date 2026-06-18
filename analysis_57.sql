SELECT employee_id, name, salary
FROM employees
WHERE department = 'IT'
AND salary >= 1500
ORDER BY salary DESC;
