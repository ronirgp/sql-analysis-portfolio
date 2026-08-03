-- ===========================================
-- Advanced INNER JOIN Exercise 6
-- Business Request:
-- Show:
-- - Department name
-- - Average salary
-- Only show departments
-- whose average salary
-- is GREATER THAN 1800.
-- Order by:
-- Average salary DESC.
-- ===========================================
-- My Solution
SELECT e2.department_name,
AVG(salary) AS average_salary
FROM employees e1
INNER JOIN departments e2
ON e2.department_id = e1.department_id
GROUP BY e2.department_name
HAVING average_salary > 1800
ORDER BY average_salary DESC;
