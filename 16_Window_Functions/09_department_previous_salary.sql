-- ===========================================
-- Window Function Exercise 9
-- Business Request:
-- Show:
-- - Employee name
-- - Department ID
-- - Salary
-- Add a column called:
-- previous_salary
-- For each department, show the salary
-- of the employee immediately before the
-- current employee.
-- Employees should be ordered from highest
-- salary to lowest salary within each
-- department.
-- Order the final result by:
-- 1. Department ID ASC
-- 2. Salary DESC
-- ===========================================
-- My Solution
SELECT name, 
department_id,
salary,
LAG(salary) OVER(PARTITION BY department_id ORDER BY salary DESC
) AS previous_salary
FROM employees
ORDER BY department_id ASC, salary DESC;