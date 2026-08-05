-- ===========================================
-- SELF JOIN Exercise 12
--
-- Business Request:
--
-- Show:
-- - Employee name
-- - Manager name
-- - Department ID
-- - Employee salary
-- - Manager salary
--
-- Show only employees who:
-- 1. Have a manager.
-- 2. Department ID is:
--    2
--    OR
--    3
-- 3. Employee salary is
--    LESS than manager salary.
-- 4. Employee name starts with:
--    D
--    OR
--    E
-- 5. Manager salary is
--    greater than 2200.
-- Order by:
-- 1. Department ID ASC.
-- 2. Manager salary DESC.
-- 3. Employee name ASC.
-- ===========================================
-- My Solution
SELECT e1.name AS employee_name,
e2.name AS manager_name,
e1.department_id AS department_id,
e1.salary AS employee_salary,
e2.salary AS manager_salary
FROM employees e1
INNER JOIN employees e2
ON e1.manager_id = e2.employee_id
WHERE e1.department_id IN (2,3)
AND e1.salary < e2.salary
AND 
(e1.name LIKE 'D%'
OR 
e1.name LIKE 'E%'
)
AND e2.salary > 2200
ORDER BY e1.department_id ASC, e2.salary DESC, e1.name ASC;