-- Business request:
-- Show employees who joined the company in the last 12 months. Return employee name, department ID,
--  and joining date. Sort from newest to oldest.
-- My solution
SELECT name AS employee_name,
department_id,
joining_date
FROM employees
WHERE joining_date >= DATE_SUB(CURDATE(), INTERVAL 12 MONTH) 
ORDER BY joining_date DESC;
