-- ===========================================
-- SQL Writing Exercise 96
-- Business Request:
-- The HR Manager wants:
-- - Employee name
-- - Department name
-- - Salary
-- Use table aliases.
-- Exclude:
-- - IT
-- Use NOT IN.
-- Only include salaries
-- greater than or equal to $1400.
-- Sort by:
-- 1. Salary (highest to lowest)
-- 2. Employee name (A-Z)
-- ===========================================
-- My Solution
SELECT e.name,
d.department_name,
e.salary
FROM employees AS e
LEFT JOIN departments AS d
ON e.department_id = d.department_id
WHERE d.department_name NOT IN ('IT')
AND e.salary >= 1400 
ORDER BY e.salary  DESC, e.name ASC;