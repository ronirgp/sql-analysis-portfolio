-- ===========================================
-- SQL Writing Exercise 94
-- Business Request:
-- The HR Director wants a report showing:
-- - Employee name
-- - Department name
-- - Salary
-- Use table aliases:
-- employees AS e
-- departments AS d
-- Show employees:
-- - NOT working in Marketing
-- Use NOT IN.
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
WHERE d.department_name NOT IN ('Marketing')
ORDER BY e.salary DESC, e.name ASC;