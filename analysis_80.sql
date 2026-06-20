SELECT employee_id, name, salary
FROM employees
WHERE salary >= 1300
OR department = 'Sales'
ORDER BY salary ASC;
