-- ===========================================
-- SQL Writing Exercise 45
--
-- Business Request:
-- The Operations Manager wants a report
-- showing:
-- - Each department
-- - Total number of employees
-- - Highest salary
-- - Lowest salary
-- - Average salary
-- - Total salary
--
-- Only include employees earning
-- at least $1200.
-- After grouping, only show
-- departments that:
-- - Have a highest salary
--   of at least $1800
-- AND
-- - Have a total salary
--   of at least $3500
-- Sort by:
-- 1. Highest salary (highest to lowest)
-- 2. Total salary (highest to lowest)
-- 3. Average salary (highest to lowest)
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
HAVING MAX(salary) >= 1800
   AND SUM(salary) >= 3300
ORDER BY highest_salary DESC,
         total_salary DESC,
         average_salary DESC,
         department ASC;