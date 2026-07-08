-- ===========================================
-- SQL Writing Exercise 27
--
-- Business Request:
-- The Human Resources Director wants a report showing:
-- - Each department
-- - Highest salary
-- - Lowest salary
-- - Total salary
-- - Average salary
-- - Total number of employees
-- Only include employees earning
-- at least $1200.
-- Sort by:
-- 1. Total salary (highest to lowest)
-- 2. Highest salary (highest to lowest)
-- 3. Department name (A-Z)
-- ===========================================
-- My Solution
SELECT department, 
       MAX(salary) AS highest_salary,
       MIN(salary) AS lowest_salary,
       SUM(salary) AS total_salary,
       COUNT(*) AS tota_employees,
       AVG(salary) AS average_salary
FROM employees
WHERE salary >= 1200
GROUP BY department
ORDER BY total_salary DESC, highest_salary DESC, department;
