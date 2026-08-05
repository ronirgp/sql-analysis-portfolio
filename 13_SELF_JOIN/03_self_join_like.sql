-- ===========================================
-- SELF JOIN Exercise 3
-- Business Request:
-- Show:
-- - Employee name
-- - Manager name
-- Show only employees who:
-- 1. Have a manager.
-- 2. Employee name starts with:
--    A
--    OR
--    C
-- Order by:
-- Employee name ASC.
-- ===========================================
-- My Solution
SELECT e1.name AS employee_name,
e2.name AS manager_name
FROM employees e1 
INNER JOIN employees e2
ON e1.manager_id = e2.employee_id
WHERE
(
e1.name LIKE 'A%'
OR 
e1.name LIKE 'C%'
)
ORDER BY e1.name ASC;