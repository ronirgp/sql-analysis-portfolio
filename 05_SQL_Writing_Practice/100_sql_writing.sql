-- ===========================================
-- SQL Writing Exercise 100
-- Business Request:
-- The CEO wants:
-- - Employee name
-- - Department name
-- - Salary
-- Use table aliases.
-- Show employees:
-- - Working in Sales, IT or Marketing
-- - Salary BETWEEN $1200 and $2500
-- - Name contains the letter:
--     a
-- Use:
-- - IN
-- - BETWEEN
-- - LIKE
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
WHERE e.name LIKE '%a%'
AND d.department_name IN ('IT','Sales','Marketing')
AND e.salary BETWEEN 1200 AND 2500
ORDER BY d.department_name ASC,
         e.salary DESC,
         e.name ASC;