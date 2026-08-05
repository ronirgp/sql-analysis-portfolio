-- ===========================================
-- SELF JOIN Exercise 4
-- Business Request:
-- Show:
-- - Employee name
-- - Manager name
-- - Employee salary
-- Show only employees who:
-- 1. Have a manager.
-- 2. Salary is BETWEEN
--    1500 AND 2500.
-- 3. Employee name contains:
--    - the letter 'a'
--      OR
--    - the letter 'r'
-- Order by:
-- 1. Employee salary DESC.
-- 2. Employee name ASC.
-- ===========================================
-- My Solution
SELECT e1.name AS employee_name,
e2.name AS manager_name,
e1.salary AS employee_salary
FROM employees e1
INNER JOIN employees e2
ON e1.manager_id = e2.employee_id
WHERE e1.salary  BETWEEN 1500 AND 2500
AND 
(e1.name LIKE '%a%'
OR 
e1.name LIKE '%r%'
)
ORDER BY e1.salary DESC, e1.name ASC;