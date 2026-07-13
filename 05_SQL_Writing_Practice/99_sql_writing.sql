-- ===========================================
-- SQL Writing Exercise 99
-- Business Request:
-- The HR Director wants:
-- - Employee name
-- - Department name
-- - Salary
-- Use table aliases.
-- Exclude:
-- - Sales
-- Use NOT IN.
-- Show employees whose salary
-- is at least $1200.
-- Sort by:
-- 1. Department name (A-Z)
-- 2. Employee name (A-Z)
-- ===========================================
-- My Solution
SELECT e.name,
d.department_name,
e.salary
FROM employees AS e
LEFT JOIN departments AS d
ON e.department_id = d.department_id
WHERE d.department_name NOT IN ('Sales')
AND e.salary >= 1200 
ORDER BY d.department_name ASC, e.name ASC;