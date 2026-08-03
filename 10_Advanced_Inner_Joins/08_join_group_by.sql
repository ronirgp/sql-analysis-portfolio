-- ===========================================
-- Advanced INNER JOIN Exercise 8
-- Business Request:
-- Show:
-- - Department name
-- - Highest salary
-- Only show departments
-- whose highest salary
-- is GREATER THAN 2500.
-- Order by:
-- Highest salary DESC.
-- ===========================================
-- My Solution
SELECT e2.department_name,
MAX(salary) AS total_salary
FROM employees e1
INNER JOIN departments e2
ON e2.department_id = e1.department_id
GROUP BY department_name
HAVING  total_salary > 2500
ORDER BY total_salary DESC;