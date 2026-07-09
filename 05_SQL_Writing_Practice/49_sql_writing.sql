-- ===========================================
-- SQL Writing Exercise 49
-- Business Request:
-- The Operations Manager wants a report showing:
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
-- - Have at least 2 employees
-- AND
-- - Have a highest salary
--   of at least $1800
-- Sort by:
-- 1. Highest salary (highest to lowest)
-- 2. Average salary (highest to lowest)
-- 3. Department name (A-Z)
-- ==========================================
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
HAVING COUNT(*) >= 2
AND MAX(salary) >= 1800
ORDER BY  highest_salary DESC, average_salary DESC, department asc;
