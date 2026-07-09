-- ===========================================
-- SQL Writing Exercise 50
--
-- Business Request:
-- The CEO wants a report showing:
-- - Each department
-- - Total number of employees
-- - Highest salary
-- - Lowest salary
-- - Average salary
-- - Total salary
-- Only include employees earning
-- at least $1200.
-- After grouping, only show
-- departments that:
-- - Have a total salary
--   of at least $3000
-- AND
-- - Have an average salary
--   of at least $1600
-- Sort by:
-- 1. Total salary (highest to lowest)
-- 2. Average salary (highest to lowest)
-- 3. Highest salary (highest to lowest)
-- 4. Department name (A-Z)
-- ===========================================
-- My Solution
SELECT department,
       COUNT(*) AS total_employees,
       MAX(salary) AS highest_salary,
       MIN(salary) AS lowest_salary,
       AVG(salary) AS average_salary,
       SUM(salary) AS total_salary
FROM employees
WHERE salary >= 1200
GROUP BY department
HAVING SUM(salary) >= 3000
AND AVG(salary) >= 1600
ORDER BY  total_salary DESC, average_salary DESC, highest_salary DESC, department asc;