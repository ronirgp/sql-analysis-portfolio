-- Business request
-- “Show all employees who joined the company within the last 6 months. Return the employee name,
--  department ID, and joining date. Sort by joining date from newest to oldest.”
-- My solution
SELECT name AS employee_name,
department_id,
joining_date
FROM employees
WHERE joining_date >= DATE_SUB(CURDATE(), INTERVAL 6 MONTH)
ORDER BY joining_date DESC;