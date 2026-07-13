-- ===========================================
-- SQL Writing Exercise 93
--
-- Business Request:
-- The Finance Manager wants a report showing:
-- - Employee name
-- - Department name
-- - Salary
-- Use table aliases:
-- employees AS e
-- departments AS d
-- Show employees working in:
-- - IT
-- - Sales
-- Use IN.
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
WHERE d.department_name IN ('IT', 'Sales')
ORDER BY d.department_name ASC, e.name ASC;