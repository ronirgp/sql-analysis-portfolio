-- ===========================================
-- SELF JOIN Exercise 9
-- Business Request:
-- Show:
-- - Employee name
-- - Manager name
-- - Department ID
-- - Employee salary
-- - Manager salary
-- Show only employees who:
-- 1. Have a manager.
-- 2. Belong to department:
--    2
--    OR
--    3
-- 3. Employee salary is
--    less than manager salary.
-- 4. Employee name starts with:
--    A
--    OR
--    R
-- Order by:
-- 1. Department ID ASC.
-- 2. Manager salary DESC.
-- 3. Employee name ASC.
-- ===========================================
-- My Solution
SELECT e1.name AS employee_name,
e2.name AS manager_name,
e1.salary AS employee_salary,
e2.salary AS manager_salary,
e1.department_id AS department_id
FROM employees e1
INNER JOIN employees e2
ON e1.manager_id = e2.employee_id
WHERE e1.department_id IN (2,3)
AND e1.salary < e2.salary
AND 
(e1.name LIKE 'A%'
OR 
e1.name LIKE 'R%'
)
ORDER BY e1.department_id ASC, e2.salary DESC, e1.name ASC;



