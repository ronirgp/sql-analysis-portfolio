-- ===========================================
-- UNION Exercise 10
-- Business Request:
-- Show:
-- - Employee name
-- - Department ID
-- - Salary
-- Combine:
-- 1. Department 1
--    Salary > 1800
--    Name starts with:
--    J
--    OR
--    A
-- 2. Department 2
--    Salary BETWEEN
--    1500 AND 2200
--    Name contains:
--    a
--    OR
--    r
-- 3. Department 3
--    Salary < 1700
--    Name ends with:
--    n
--    OR
--    e
-- Display them as one report.
--
-- Remove duplicates.
-- Order by:
-- 1. Department ID ASC.
-- 2. Salary DESC.
-- 3. Employee name ASC.
-- ===========================================
-- My Solution
SELECT name,
department_id,
salary
FROM employees
WHERE department_id = 1
AND salary > 1800
AND 
(name LIKE 'J%'
OR 
name LIKE 'A%'
)
UNION

SELECT name,
department_id,
salary
FROM employees
WHERE department_id = 2
AND salary BETWEEN 1500 AND 2200
AND 
(name LIKE '%a%'
OR 
name LIKE '%r%'
)
UNION

SELECT name,
department_id,
salary
FROM employees
WHERE department_id = 3
AND salary < 1700
AND
(name LIKE '%n'
OR 
name LIKE '%e'
)
ORDER BY department_id ASC, salary DESC, name ASC;

