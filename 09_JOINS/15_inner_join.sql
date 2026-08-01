-- ===========================================
-- INNER JOIN Exercise 15
-- Business Request:
-- Show:
-- - Employee name
-- - Department name
-- - Salary
-- Departments:
-- Marketing
-- HR
-- Salary must be:
-- LESS THAN OR EQUAL TO 2100
-- Employee name ends with:
-- a
-- OR
-- e
-- Order by:
-- Salary ASC,
-- Employee name DESC.
-- ===========================================
-- My Solution
SELECT e1.name,
e2.department_name,
e1.salary
FROM employees e1
INNER JOIN departments e2
ON e2.department_id = e1.department_id
WHERE department_name IN ('Marketing', 'HR')
AND e1.salary <= 2100
AND 
(e1.name LIKE '%a'
OR 
e1.name LIKE '%e'
)
ORDER BY e1.salary ASC, e1.name DESC;

