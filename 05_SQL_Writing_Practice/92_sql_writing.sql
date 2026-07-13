-- ===========================================
-- SQL Writing Exercise 92
-- Business Request:
-- The HR Manager wants a report showing:
-- - Employee name
-- - Department name
-- - Salary
-- Use table aliases:
-- employees AS e
-- departments AS d
-- Show employees earning
-- BETWEEN $1300 and $2000.
-- Sort by:
-- 1. Department name (A-Z)
-- 2. Salary (highest to lowest)
-- 3. Employee name (A-Z)
-- ===========================================
-- My Solution 
SELECT e.name,
d.department_name,
e.salary
FROM employees AS e
LEFT JOIN departments AS d
ON e.department_id = d.department_id
 WHERE e.salary BETWEEN 1300 AND 2000
ORDER BY d.department_name ASC, e.salary  DESC, e.name ASC;