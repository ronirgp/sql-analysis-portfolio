-- ===========================================
-- SQL Writing Exercise 46
-- Business Request:
-- The Finance Manager wants a report showing:
-- - Each department
-- - Total number of employees
-- - Highest salary
-- - Lowest salary
-- - Average salary
-- - Total salary
-- Only include employees earning
-- at least $1200.
--
-- After grouping, only show
-- departments that:
-- - Have at least 2 employees
-- AND
-- - Have a total salary
--   of at least $3000
-- Sort by:
-- 1. Total salary (highest to lowest)
-- 2. Average salary (highest to lowest)
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
HAVING COUNT(*) >= 2
AND SUM(salary) >= 3000
ORDER BY total_salary DESC, average_salary DESC, department ASC;