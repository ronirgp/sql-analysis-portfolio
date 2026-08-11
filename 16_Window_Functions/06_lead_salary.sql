-- ===========================================
-- Window Function Exercise 6
-- Business Request:
-- Show:
-- - Employee name
-- - Salary
-- Add a column called:
-- next_salary
-- Show the salary of the employee immediately
-- after the current employee when employees
-- are ordered from highest salary to lowest.
-- Order the final result by:
-- Salary DESC
-- ===========================================
-- My Solution
SELECT name,
department_id,
salary,
LEAD(salary) OVER(ORDER BY salary DESC
) AS next_salary
FROM employees
ORDER BY salary DESC;

