-- ===========================================
-- SQL Writing Exercise 24
--
-- Business Request:
-- The HR manager wants a report showing:
-- - Each department
-- - Lowest salary
-- - Average salary
-- - Total salary
-- - Total number of employees
-- Only include employees earning
-- at least $1400.
-- Sort by:
-- 1. Average salary (highest to lowest)
-- 2. Total salary (highest to lowest)
-- 3. Department name (A-Z)
-- ===========================================
-- My Solution

SELECT department, 
       MIN(salary) AS lowest_salary,
       AVG(salary) AS average_salary,
       SUM(salary) AS total_salary,
       COUNT(*) AS total_employees
FROM employees
WHERE salary >= 1400
GROUP BY department
ORDER BY average_salary DESC, total_salary DESC, department ASC;
       