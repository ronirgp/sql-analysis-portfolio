-- “Show employees who joined the company within the last 3 months. Return the employee name, department ID,
--  and joining date. Sort by joining date from newest to oldest.”
SELECT name AS employee_name,
department_id,
joining_date
FROM employees
WHERE joining_date >= DATE_SUB(CURDATE(), INTERVAL 3 MONTH)
ORDER BY joining_date DESC;