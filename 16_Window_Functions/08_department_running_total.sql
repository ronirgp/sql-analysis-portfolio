-- ===========================================
-- Window Function Exercise 8
-- Business Request:
-- Show:
-- - Employee name
-- - Department ID
-- - Salary
-- Add a column called:
-- department_salary_total
-- Calculate the cumulative salary total
-- separately for each department.
-- Within each department, process employees
-- from highest salary to lowest salary.
-- Order the final result by:
-- 1. Department ID ASC
-- 2. Salary DESC
-- ===========================================
-- My Solution
SELECT name,
department_id,
salary,
SUM(salary) OVER( PARTITION BY department_id ORDER BY salary DESC)
AS department_salary_total
FROM employees
ORDER BY department_id ASC, salary DESC;