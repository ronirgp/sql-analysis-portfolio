-- ===========================================
-- Window Function Exercise 3
-- Business Request:
-- Show:
-- - Employee name
-- - Department ID
-- - Salary
-- Add a column called:
-- salary_rank
-- Rank employees separately within each
-- department according to salary.
-- Highest salary should have rank 1.
-- If two employees have the same salary,
-- they should receive the same rank.
-- Order the final result by:
-- 1. Department ID ASC
-- 2. Salary DESC
-- ===========================================
-- My Solution
SELECT name,
department_id,
salary,
ROW_NUMBER() OVER(
	PARTITION BY department_id
    ORDER BY salary DESC
    ) AS  salary_rank
  
FROM employees
ORDER BY department_id ASC, salary DESC;