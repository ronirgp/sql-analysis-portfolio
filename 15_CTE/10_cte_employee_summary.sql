-- ===========================================
-- CTE Exercise 10
-- Business Request:
-- Create a temporary table named:
-- employee_summary
-- containing:
-- - Employee name
-- - Department ID
-- - Salary
-- Only include employees whose salary
-- is greater than 1300.
-- Then display employees who:
-- - Belong to department 1 or 2
-- - Salary is between 1500 and 2600
-- - Name contains 'a' OR 'o'
-- - Name does NOT end with 'n'
-- Order by:
-- 1. Department ID ASC
-- 2. Salary DESC
-- 3. Employee name ASC
-- ===========================================
-- My Solution
WITH employee_summary AS
(
SELECT name AS employee_name, 
department_id,
salary
FROM employees
WHERE salary > 1300
)
SELECT employee_name, department_id,
salary 
FROM employee_summary
WHERE department_id IN (1,2)
AND salary BETWEEN 1500 AND 2600
AND 
(employee_name LIKE '%a%'
OR employee_name LIKE '%O%'
)
AND employee_name NOT LIKE '%n'
ORDER BY department_id ASC, salary DESC, employee_name ASC;