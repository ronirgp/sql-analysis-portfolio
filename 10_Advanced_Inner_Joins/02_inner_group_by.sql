-- ===========================================
-- Advanced INNER JOIN Exercise 2
-- Business Request:
-- Show:
-- - Department name
-- - Average salary
-- Order by:
-- Average salary DESC.
-- ===========================================
-- My Solution
SELECT e2.department_name,
AVG(salary) AS average_salary
FROM employees e1
INNER JOIN departments e2
ON e2.department_id = e1.department_id
GROUP BY department_name
ORDER BY average_salary DESC;