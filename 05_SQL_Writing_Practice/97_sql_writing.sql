-- ===========================================
-- SQL Writing Exercise 97
-- Business Request:
-- The CEO wants:
-- - Employee name
-- - Department name
-- - Salary
-- Use table aliases.
-- Show employees whose names
-- start with:
-- C
-- Use LIKE.
-- Sort by employee name (A-Z).
-- ===========================================
-- My Solution
SELECT e.name,
d.department_name,
e.salary
FROM employees AS e
LEFT JOIN departments AS d
ON e.department_id = d.department_id
WHERE e.name LIKE 'C%' 
ORDER BY e.name ASC;