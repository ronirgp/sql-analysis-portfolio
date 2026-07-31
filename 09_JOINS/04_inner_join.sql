-- ===========================================
-- INNER JOIN Exercise 4
-- Business Request:
-- Show:
-- - Employee name
-- - Department name
-- - Salary
-- Only employees from
-- the Marketing department
-- whose salary is greater than 1500.
-- Order by salary DESC.
-- ==========================================
-- My Solution
SELECT e1.name,
e2.department_name,
e1.salary
FROM employees e1
INNER JOIN departments e2
ON e2.department_id = e1.department_id
WHERE e2.department_name = 'Marketing'
AND e1.salary > 1500
ORDER BY e1.salary DESC;

