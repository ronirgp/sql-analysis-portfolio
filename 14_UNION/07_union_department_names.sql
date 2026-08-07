-- ===========================================
-- UNION Exercise 7
-- Business Request:
-- Show:
-- - Employee name
-- - Department ID
-- Combine:
-- 1. Employees from department 1
--    whose name starts with:
--    A
--    OR
--    J
-- 2. Employees from department 2
--    whose name ends with:
--    n
--    OR
--    r
-- 3. Employees from department 3
--    whose name contains:
--    a
-- Display them as one report.
-- Remove duplicates.
-- Order by:
-- 1. Department ID ASC.
-- 2. Employee name ASC.
-- ===========================================
-- My Solution
SELECT name,
department_id
FROM employees
WHERE department_id = 1
AND
(name LIKE 'A%'
OR 
name LIKE 'J%'
)
UNION

SELECT name,
department_id
FROM employees
WHERE department_id = 2
AND
(name LIKE '%n'
OR 
name LIKE '%r'
)
UNION

SELECT name,
department_id
FROM employees
WHERE department_id = 3
AND 
(name LIKE '%a%'
)
ORDER BY department_id ASC, name ASC;

