-- ===========================================
-- SELF JOIN Exercise 7
-- Business Request:
-- Show:
-- - Employee name
-- - Manager name
-- - Employee salary
-- Show only employees who:
-- 1. Have a manager.
-- 2. Manager name starts with:
--    J
--    OR
--    A
--
-- 3. Employee salary
--    is greater than 1600.
-- Order by:
-- 1. Manager name ASC.
-- 2. Employee salary DESC.
-- ===========================================
-- My Solution
SELECT e1.name AS employee_name,
e2.name AS manager_name,
e1.salary AS employee_salary
FROM employees e1
INNER JOIN employees e2
ON e1.manager_id = e2.employee_id
WHERE 
(e2.name LIKE 'J%'
OR 
e2.name LIKE 'A%'
)
AND e1.salary > 1600
ORDER BY e2.name ASC, e1.salary DESC;