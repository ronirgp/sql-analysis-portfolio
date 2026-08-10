-- ===========================================
-- CTE Exercise 9
--
-- Business Request:
-- Create a temporary table named:
-- employee_report
-- containing:
-- - Employee name
-- - Department ID
-- - Salary
-- Only include employees whose salary
-- is greater than 1500.
-- Then display employees who:
-- - Belong to department 1, 2, or 3
-- - Have a salary between 1600 and 2500
-- - Have a name that starts with A, C, or R
-- Order by:
-- 1. Salary DESC
-- 2. Department ID ASC
-- 3. Employee name ASC
-- ===========================================
-- My Solution
WITH employee_report AS
(
SELECT name AS employee_name,
department_id,
salary
FROM employees
WHERE salary > 1500
)
SELECT employee_name, department_id,
salary
FROM employee_report
WHERE department_id IN (1,2,3)
AND salary BETWEEN 1600 AND 2500
AND
( employee_name LIKE 'A%' 
OR employee_name LIKE 'C%'
OR employee_name LIKE 'R%'
)
ORDER BY salary DESC, department_id ASC, employee_name ASC;