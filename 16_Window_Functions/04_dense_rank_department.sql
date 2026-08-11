-- ===========================================
-- Window Function Exercise 4
-- Business Request:
-- Show:
-- - Employee name
-- - Department ID
-- - Salary
-- Add a column called:
-- salary_dense_rank
-- Rank employees separately within each
-- department according to salary.
-- Highest salary should have rank 1.
-- Employees with the same salary should
-- receive the same rank.
-- Unlike RANK(), the ranking should NOT
-- contain gaps after tied salaries.
-- Order the final result by:
-- 1. Department ID ASC
-- 2. Salary DESC
-- ===========================================
-- My Solution
SELECT name,
department_id,
salary,
DENSE_RANK() OVER(
PARTITION BY department_id ORDER BY salary DESC
) 
AS salary_dense_rank
FROM employees 
ORDER BY department_id ASC, salary DESC;