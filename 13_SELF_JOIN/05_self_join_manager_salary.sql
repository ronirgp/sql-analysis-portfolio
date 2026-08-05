-- ===========================================
-- SELF JOIN Exercise 5
-- Business Request:
-- Show:
-- - Employee name
-- - Manager name
-- - Employee salary
-- - Manager salary
-- Show only employees who:
-- 1. Have a manager.
-- 2. Employee salary > 1500.
-- 3. Manager salary > 2000.
-- Order by:
-- 1. Manager salary DESC.
-- 2. Employee salary DESC.
-- ===========================================
-- My Solution
SELECT e1.name AS employee_name,
       e2.name AS manager_name,
       e1.salary AS employee_salary,
       e2.salary AS manager_salary
FROM employees e1
INNER JOIN employees e2
ON e1.manager_id = e2.employee_id
WHERE e1.salary > 1500
AND e2.salary > 2000
ORDER BY e2.salary DESC,
         e1.salary DESC;