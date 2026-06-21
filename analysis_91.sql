SELECT employee_id, name, department
FROM employees
WHERE department = 'IT'
OR salary < 1300
ORDER BY salary ASC;
