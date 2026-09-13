-- Business request:
-- Show employees who joined the company more than 2 years ago. Return employee name, department ID,
--  and joining date. Sort from oldest to newest.
-- My solution
SELECT name AS employee_name,
department_id,
joining_date
FROM employees
WHERE joining_date < DATE_SUB(CURDATE(), INTERVAL 2 YEAR)
ORDER BY joining_date ASC;