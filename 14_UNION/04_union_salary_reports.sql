-- ===========================================
-- UNION Exercise 4
-- Business Request:
-- Show:
-- - Employee name
-- - Salary
-- Combine:
-- 1. Employees with salary
--    LESS than 1500.
-- 2. Employees with salary
--    GREATER than 2200.
-- Display them as one list.
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

UNION 

SELECT name,
salary
FROM employees
WHERE salary > 2200
ORDER BY salary DESC, name ASC;



