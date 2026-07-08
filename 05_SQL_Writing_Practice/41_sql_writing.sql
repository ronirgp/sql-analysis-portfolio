-- ===========================================
-- SQL Writing Exercise 41
--
-- Business Request:
-- The HR Director wants a report showing:
-- - Each department
-- - Total number of employees
-- - Average salary
-- - Highest salary
-- - Lowest salary
-- - Total salary
--
-- Only include employees earning
-- at least $1200.
--
-- After grouping, only show
-- departments with at least
-- 2 employees.
--
-- Sort by:
-- 1. Average salary (highest to lowest)
-- 2. Total salary (highest to lowest)
-- 3. Department name (A-Z)
-- ===========================================

-- My Solution
SELECT department,
		COUNT(*) AS total_employees,
        AVG(salary)  AS average_salary,
        MAX(salary) AS highest_salary,
        MIN(salary) AS lowest_salary,
        SUM(salary) AS total_salary
FROM employees
WHERE salary >= 1200
GROUP BY department
HAVING COUNT(*) >= 2
ORDER BY average_salary DESC, total_salary DESC, department ASC;