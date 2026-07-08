-- ===========================================
-- SQL Writing Exercise 29
--
-- Business Request:
-- The Sales Director wants a report showing:
-- - Each department
-- - Highest salary
-- - Average salary
-- - Total salary
-- - Total number of employees
-- Only include employees earning
-- at least $1400.
-- Sort by:
-- 1. Highest salary (highest to lowest)
-- 2. Total salary (highest to lowest)
-- 3. Department name (A-Z)
-- ===========================================
-- My Solution
SELECT department,
       Max(salary) AS highest_salary,
       AVG(salary) AS average_salary,
       SUM(salary) AS total_salary,
       COUNT(*) AS total_employees
FROM employees
WHERE salary >= 1400
GROUP BY department
ORDER BY highest_salary DESC, total_salary DESC, department ASC;
       