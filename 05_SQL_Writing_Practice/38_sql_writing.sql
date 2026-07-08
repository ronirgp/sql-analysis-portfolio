-- ===========================================
-- SQL Writing Exercise 38
--
-- Business Request:
-- The Human Resources Manager wants
-- a report showing:
-- - Each department
-- - Total number of employees
-- - Average salary
-- - Highest salary
-- - Lowest salary
-- - Total salary
--
-- Only include employees earning
-- at least $1300.
--
-- Sort by:
-- 1. Average salary (highest to lowest)
-- 2. Lowest salary (highest to lowest)
-- 3. Highest salary (highest to lowest)
-- 4. Department name (A-Z)
-- ===========================================

-- My Solution
SELECT department,
		COUNT(*) AS total_employees,
        AVG(salary) AS average_salary,
        MAX(salary) AS highest_salary,
        MIN(salary) AS lowest_salary,
        SUM(salary) AS total_salary
FROM employees
WHERE salary >= 1300 
GROUP BY department
ORDER BY average_salary DESC, lowest_salary DESC, highest_salary DESC, department ASC;
