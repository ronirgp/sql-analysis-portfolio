-- Business request
-- Show employees who joined the company before January 1, 2024. Return the employee name, department ID,
-- and joining date. Sort the employees from oldest to newest.
SELECT name AS employee_name,
department_id,
joining_date
FROM employees
WHERE joining_date < '2024-01-01'
ORDER BY joining_date ASC;
