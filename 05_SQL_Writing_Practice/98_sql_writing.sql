-- ===========================================
-- SQL Writing Exercise 98
-- Business Request:
-- The Finance Manager wants:
-- - Employee name
-- - Department name
-- - Salary
-- Use table aliases.
-- Show employees working in:
-- - IT
-- - Marketing
-- Use IN.
-- Show salaries
-- BETWEEN $1300 and $2200.
-- Sort by:
-- 1. Salary (highest to lowest)
-- 2. Department name (A-Z)
-- 3. Employee name (A-Z)
-- ===========================================
-- My Solution
SELECT e.name,
d.department_name,
e.salary
FROM employees AS e
LEFT JOIN departments AS d
ON e.department_id = d.department_id
WHERE d.department_name IN ('IT', 'Marketing')
AND e.salary BETWEEN 1300 AND 2200
ORDER BY e.salary  DESC, d.department_name ASC, e.name ASC;