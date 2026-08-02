-- ===========================================
-- Advanced INNER JOIN Exercise 4
-- Business Request:
-- Show:
-- - Department name
-- - Highest salary
-- - Lowest salary
-- Order by:
-- Highest salary DESC.
-- ===========================================
-- My Solution
SELECT e2.department_name,
MAX(salary) AS highest_salary,
MIN(salary) AS lowest_salary
FROM employees e1
INNER JOIN departments e2
ON e2.department_id = e1.department_id
GROUP BY department_name
ORDER BY highest_salary DESC;