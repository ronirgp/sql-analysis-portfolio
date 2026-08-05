-- ===========================================
-- SELF JOIN Exercise 8
-- Business Request:
-- Show:
-- - Employee name
-- - Manager name
-- - Employee salary
-- - Manager salary
-- Show only employees who:
-- 1. Have a manager.
-- 2. Employee salary is LESS than
--    the manager salary.
-- 3. Employee name contains:
--    n
--    OR
--    o
-- Order by:
-- 1. Manager salary DESC.
-- 2. Employee salary ASC.
-- ===========================================
-- My Solution
SELECT e1.name AS employee_name,
e2.name AS manager_name,
e1.salary AS employee_salary,
e2.salary AS manager_salary
FROM employees e1
INNER JOIN employees e2
ON e1.manager_id = e2.employee_id
WHERE e1.salary < e2.salary
AND 
(e1.name LIKE '%n%'
OR 
e1.name LIKE '%o%'
)
ORDER BY e2.salary DESC, e1.salary ASC;