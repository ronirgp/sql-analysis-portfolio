-- ===========================================
-- SQL Writing Exercise 33
--
-- Business Request:
-- The Finance Director wants a report showing:
-- - Each department
-- - Total salary
-- - Average salary
-- - Highest salary
-- - Lowest salary
-- - Total number of employees
--
-- Only include employees earning
-- at least $1300.
--
-- Sort by:
-- 1. Average salary (highest to lowest)
-- 2. Total salary (highest to lowest)
-- 3. Department name (A-Z)
-- ===========================================

-- My Solution
SELECT department, 
       SUM(salary) AS total_salary,
       AVG(salary) AS average_salary,
       Max(salary) AS highest_salary,
       MIN(salary) AS lowest_salary,
       COUNT(*) AS total_employees
FROM employees
WHERE salary >= 1300
GROUP BY department
ORDER BY  average_salary DESC, total_salary DESC, department ASC;