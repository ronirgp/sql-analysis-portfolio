-- ===========================================
-- CTE Exercise 3
-- Business Request:
-- Create a temporary table named:
-- it_employees
-- containing:
-- - Employee name
-- - Department ID
-- - Salary
-- Only employees from:
-- Department 2
-- Then display:
-- - Employee name
-- - Salary
-- Only if salary is greater than 1600.
-- Order by:
-- Salary DESC.
-- ===========================================
-- My SolutionW
WITH it_employees AS
(
SELECT name AS employee_name,
department_id,
salary
FROM employees
WHERE department_id = 2
)
SELECT employee_name,
salary
FROM it_employees 
WHERE salary > 1600
ORDER BY salary DESC;