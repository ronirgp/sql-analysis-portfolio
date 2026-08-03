-- ===========================================
-- Advanced INNER JOIN Exercise 10
-- Business Request:
-- Show:
-- - Department name
-- - Total employees
-- - Average salary
-- Only show departments
-- that:
-- Have MORE THAN 3 employees
-- AND
-- Average salary is GREATER THAN 1800
-- Order by:
-- Average salary DESC.
-- ===========================================
-- My Solution
SELECT e2.department_name,
COUNT(*) AS total_employees,
AVG(salary) AS average_salary
FROM employees e1
INNER JOIN departments e2
ON e2.department_id = e1.department_id
GROUP BY e2.department_name
HAVING COUNT(*) > 3
AND average_salary > 1800
ORDER BY average_salary DESC;
