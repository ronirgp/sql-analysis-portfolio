-- ===========================================
-- CTE Exercise 4
-- Business Request:
-- Create a temporary table named:
-- sales_team
-- containing:
-- - Employee name
-- - Department ID
-- - Salary
-- Only employees from:
-- Department 1
-- Then display:
-- - Employee name
-- - Salary
-- Only if:
-- - Salary is greater than 1200
-- - Name contains:
--      a
--      OR
--      n
-- Order by:
-- 1. Salary DESC
-- 2. Employee name ASC
-- ===========================================
-- My Solution
WITH sales_team AS
(
SELECT name AS employee_name,
department_id,
salary
FROM employees
WHERE department_id = 1
)
SELECT employee_name,
salary
FROM sales_team
WHERE salary > 1200
AND 
(employee_name LIKE '%a%'
OR 
employee_name LIKE '%n%'
)
ORDER BY salary DESC, employee_name ASC; 

