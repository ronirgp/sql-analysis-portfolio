SELECT employee_id, name, department
FROM employees
WHERE employee_id >= 2
OR salary > 1800
ORDER BY employee_id DESC;
