-- ===========================================
-- SQL Writing Exercise 36
--
-- Business Request:
-- The HR Vice President wants a report
-- showing:
-- - Each department
-- - Average salary
-- - Highest salary
-- - Lowest salary
-- - Total salary
-- - Total number of employees
--
-- Only include employees earning
-- at least $1200.
--
-- Sort by:
-- 1. Highest salary (highest to lowest)
-- 2. Average salary (highest to lowest)
-- 3. Total salary (highest to lowest)
-- 4. Department name (A-Z)
-- ===========================================

-- My Solution
SELECT department,
	   AVG(salary) AS average_salary,
       MAX(salary) AS highest_salary,
       MIN(salary) AS lowest_salary,
       SUM(salary) AS totaL_salary,
       COUNT(*) AS total_employees
FROM employees
WHERE salary >= 1200
GROUP BY department
ORDER BY highest_salary DESC, average_salary DESC, tota_salary DESC, department ASC;