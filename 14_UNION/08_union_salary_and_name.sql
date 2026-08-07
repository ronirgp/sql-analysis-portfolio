-- ===========================================
-- UNION Exercise 8
-- Business Request:
-- Show:
-- - Employee name
-- - Salary
-- Combine:
-- 1. Employees whose salary
--    is LESS than 1500
--    AND
--    name contains:
--    a
-- 2. Employees whose salary
--    is BETWEEN
--    1500 AND 2200
--    AND
--    name starts with:
--    C
--    OR
--    D
-- 3. Employees whose salary
--    is GREATER than 2200
--    AND
--    name ends with:
--    r
--    OR
--    n
-- Display them as one report.
-- Remove duplicates.
-- Order by:
-- 1. Salary DESC.
-- 2. Employee name ASC.
-- ===========================================
-- My Solution
SELECT name,
salary 
FROM employees
WHERE salary < 1500
AND 
(name LIKE '%a%'
)
UNION

SELECT name,
salary 
FROM employees
WHERE salary BETWEEN 1500 AND 2200
AND 
(name LIKE 'C%'
OR 
name LIKE 'D%'
)
UNION 

SELECT name,
salary 
FROM employees
WHERE salary > 2200
AND 
(name LIKE '%r'
OR
name  LIKE '%n'
)
ORDER BY salary DESC, name ASC;
