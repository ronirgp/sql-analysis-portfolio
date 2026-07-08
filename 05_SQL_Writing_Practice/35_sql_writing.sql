-- ===========================================
-- SQL Writing Exercise 35
--
-- Business Request:
-- The Finance Manager is preparing a
-- quarterly payroll report.
-- Show:
-- - Each department
-- - Total number of employees
-- - Highest salary
-- - Lowest salary
-- - Average salary
-- - Total salary
--
-- Only include employees earning
-- at least $1300.
-- Sort by:
-- 1. Total salary (highest to lowest)
-- 2. Total number of employees
--    (highest to lowest)
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
WHERE salary >= 1300
GROUP BY department
ORDER BY  total_salary DESC, total_employees DESC, highest_salary DESC, department ASC;