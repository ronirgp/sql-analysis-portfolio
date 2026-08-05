-- ===========================================
-- SELF JOIN Exercise 1
-- Business Request:
-- Show:
-- Employee name
-- Manager name
-- Show only employees
-- that have a manager.
-- Order by
-- Employee name ASC.
-- ===========================================
-- My Solution 
SELECT e1.name AS employee_name,
       e2.name AS manager_name
FROM employees e1
INNER JOIN employees e2
ON e1.manager_id = e2.employee_id
ORDER BY e1.name ASC;