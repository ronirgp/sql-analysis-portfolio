-- ===========================================
-- SQL Writing Exercise 26
--
-- Business Request:
-- The Operations Manager wants a report showing:
-- - Each department
-- - Lowest salary
-- - Highest salary
-- - Average salary
-- - Total number of employees
-- Only include employees earning
-- at least $1400.
-- Sort by:
-- 1. Highest salary (highest to lowest)
-- 2. Total number of employees (highest to lowest)
-- 3. Department name (A-Z)
-- ===========================================
-- My Solution
SELECT department, 
       MIN(salary) AS lowest_salary,
       MAX(salary) AS highest_salary,
       AVG(salary) AS average_salary,
       COUNT(*) AS total_employees
FROM employees
WHERE salary >= 1400
GROUP BY department
ORDER BY highest_salary DESC, total_employees DESC, department ASC;

