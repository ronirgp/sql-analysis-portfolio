-- ===========================================
-- Advanced INNER JOIN Exercise 7
-- Business Request:
-- Show:
-- - Department name
-- - Total payroll
-- Only show departments
-- whose total payroll
-- is GREATER THAN 9000.
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
HAVING  total_salary > 9000
ORDER BY  total_salary DESC;