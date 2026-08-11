-- ===========================================
-- Window Function Exercise 7
-- Business Request:
-- Show:
-- - Employee name
-- - Salary
-- Add a column called:
-- running_salary_total
-- Calculate the cumulative total of salaries
-- as employees are ordered from highest salary
-- to lowest salary.
-- Order the final result by:
-- Salary DESC
-- ===========================================
-- My Solution
SELECT name,
salary,
SUM(salary) OVER(ORDER BY salary DESC
)AS running_salary_total
FROM employees
ORDER BY salary DESC;