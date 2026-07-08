-- ===========================================
-- SQL Writing Exercise 31
--
-- Business Request:
-- The Payroll Manager wants a report showing:
-- - Each department
-- - Highest salary
-- - Lowest salary
-- - Average salary
-- - Total salary
-- - Total number of employees
--
-- Only include employees earning
-- at least $1200.
--
-- Sort by:
-- 1. Total salary (highest to lowest)
-- 2. Average salary (highest to lowest)
-- 3. Department name (A-Z)
-- ==========================================
-- My Solution
SELECT department, 
       Max(salary) AS highest_salary,
       MIN(salary) AS lowest_salary,
       AVG(salary) AS average_salary,
       SUM(salary) AS total_salary,
       COUNT(*) AS total_employees
FROM employees
WHERE salary >= 1200
GROUP BY department
ORDER BY total_salary DESC, average_salary DESC, department ASC;