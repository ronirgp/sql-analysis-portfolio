-- ===========================================
-- Advanced INNER JOIN Exercise 5
-- Business Request
-- Show:
-- - Department name
-- - Total employees
-- BUT...
-- Only show departments
-- that have MORE THAN
-- 5 employees.
-- Order by:
-- Total employees DESC.
-- ===========================================
-- My Solution
SELECT e2.department_name,
COUNT(*) AS total_employees
FROM employees e1
INNER JOIN departments e2
ON e2.department_id = e1.department_id
GROUP BY e2.department_name
HAVING COUNT(*) > 5 
ORDER BY total_employees DESC;
