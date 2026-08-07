-- ===========================================
-- CTE Exercise 1
-- Business Request:
-- Create a temporary list named:
-- employee_list
-- containing:
-- - Employee name
-- - Salary
-- Then display:
-- - Employee name
-- - Salary
-- Order by:
-- Salary DESC.
-- ===========================================
-- My Solution
WITH employee_list AS
(
    SELECT name AS employee_name,
           salary
    FROM employees
)

SELECT employee_name,
       salary
FROM employee_list
ORDER BY salary DESC;