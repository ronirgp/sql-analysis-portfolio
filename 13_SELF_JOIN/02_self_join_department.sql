-- ===========================================
-- SELF JOIN Exercise 2
-- Business Request:
-- Show:
-- - Employee name
-- - Manager name
-- - Employee salary
-- Show only employees
-- that have a manager.
-- Salary must be greater
-- than 1500.
-- Order by:
-- Salary DESC.
-- ===========================================
-- My Solution
SELECT e1.name AS employee_name,
e2.name AS manager_name,
e1.salary AS employee_salary
FROM employees e1
INNER JOIN employees e2
ON e1.manager_id = e2.employee_id
WHERE e1.salary > 1500
ORDER BY e1.salary DESC;
