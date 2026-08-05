-- ===========================================
-- SELF JOIN Exercise 11
--
-- Business Request:
--
-- Show:
-- - Employee name
-- - Manager name
-- - Department ID
-- - Employee salary
-- Show only employees who:
-- 1. Have a manager.
-- 2. Department ID is:
--    1
--    OR
--    2
-- 3. Employee salary is
--    greater than manager salary.
-- 4. Manager name contains:
--    o
--    OR
--    n
-- Order by:
-- 1. Department ID ASC.
-- 2. Employee salary DESC.
-- 3. Manager name ASC.
-- ===========================================
-- My Solution
SELECT e1.name AS employee_name,
e2.name AS manager_name, 
e1.department_id AS department_id,
e1.salary AS employee_salary
FROM employees e1
INNER JOIN employees e2
ON e1.manager_id = e2.employee_id
WHERE e1.department_id IN (1,2)
AND e1.salary > e2.salary
AND
(e2.name LIKE '%o%'
OR 
e2.name LIKE '%n%'
)
ORDER BY e1.department_id ASC, e1.salary DESC, e2.name ASC;
