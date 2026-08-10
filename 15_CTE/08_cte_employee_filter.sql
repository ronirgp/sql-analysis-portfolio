-- ===========================================
-- CTE Exercise 8
-- Business Request:
-- Create a temporary table named:
-- employee_analysis
-- containing:
-- - Employee name
-- - Department ID
-- - Salary
-- Only include employees whose salary
-- is greater than 1400.
-- Then display only employees who:
-- - Belong to department 1 or 2
-- - Have a name containing the letter 'a'
-- Order by:
-- 1. Department ID ASC
-- 2. Salary DESC
-- 3. Employee name ASC
-- ===========================================
-- My Solution
WITH employee_analysis AS
(
SELECT name AS employee_name,
department_id,
salary
FROM employees
WHERE salary > 1400
)
SELECT employee_name, department_id,
salary 
FROM employee_analysis
WHERE department_id IN (1,2)
AND 
(employee_name LIKE '%a%')
ORDER BY department_id ASC, salary DESC, employee_name ASC;