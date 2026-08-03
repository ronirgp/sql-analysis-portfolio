-- ===========================================
-- Advanced INNER JOIN Exercise 9
-- Business Request:
-- Show:
-- - Department name
-- - Lowest salary
-- Only show departments
-- whose lowest salary
-- is LESS THAN 1300.
-- Order by:
-- Lowest salary ASC.
-- ===========================================
-- My Solution
SELECT e2.department_name,
MIN(salary) AS lowest_salary
FROM employees e1
INNER JOIN departments e2
ON e2.department_id = e1.department_id
GROUP BY department_name
HAVING  lowest_salary < 1300
ORDER BY lowest_salary ASC;