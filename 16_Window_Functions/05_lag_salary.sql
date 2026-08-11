-- ===========================================
-- Window Function Exercise 5
-- Business Request:
-- Show:
-- - Employee name
-- - Salary
-- Add a column called:
-- previous_salary
-- Show the salary of the employee immediately
-- before the current employee when employees
-- are ordered from highest salary to lowest.
-- ===========================================
-- My Solution
SELECT name, 
department_id,
salary,
LAG(salary) OVER(ORDER BY salary DESC
) AS previous_salary
FROM employees
ORDER BY salary DESC;
