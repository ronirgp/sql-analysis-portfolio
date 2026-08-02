-- ===========================================
-- Advanced INNER JOIN Exercise 
-- Business Request:
-- Show:
-- - Department name
-- - Total payroll
-- (Payroll = SUM of all salaries
-- in each department)
-- Order by:
-- Total payroll DESC.
-- ===========================================
-- My Solution
SELECT e2.department_name,
SUM(salary) AS total_salary
FROM employees e1
INNER JOIN departments e2
ON e2.department_id = e1.department_id
GROUP BY department_name
ORDER BY total_salary DESC;

