-- ===========================================
-- SQL Writing Exercise 48
--
-- Business Request:
-- The Finance Director wants a report showing:
-- - Each department
-- - Total number of employees
-- - Highest salary
-- - Lowest salary
-- - Average salary
-- - Total salary
-- Only include employees earning
-- at least $1200.
-- After grouping, only show
-- departments that:
-- - Have a total salary
--   of at least $3000
-- OR
-- - Have a highest salary
--   of at least $2000
-- Sort by:
-- 1. Highest salary (highest to lowest)
-- 2. Total salary (highest to lowest)
-- 3. Department name (A-Z)
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
HAVING SUM(salary) >= 3000
OR MAX(salary) >= 2000
ORDER BY highest_salary DESC, total_salary DESC, department ASC;
