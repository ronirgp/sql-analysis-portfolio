-- ===========================================
-- SQL Writing Exercise 32
--
-- Business Request:
-- The HR Director wants a report showing:
-- - Each department
-- - Average salary
-- - Highest salary
-- - Lowest salary
-- - Total number of employees
--
-- Only include employees earning
-- at least $1400.
--
-- Sort by:
-- 1. Highest salary (highest to lowest)
-- 2. Average salary (highest to lowest)
-- 3. Department name (A-Z)
-- ===========================================

-- My Solution
SELECT department,
       AVG(salary) AS average_salary,
       MAX(salary) AS highest_salary,
       MIN(salary) AS lowest_salary,
       COUNT(*) AS total_employees
FROM employees
WHERE salary >= 1400
GROUP BY department
ORDER BY highest_salary DESC, average_salary DESC, department ASC;