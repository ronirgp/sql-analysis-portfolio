-- ===========================================
-- EXISTS Exercise 2
-- Business Request:
-- Show employees whose department exists
-- AND whose salary is greater than 1800.
-- Show:
-- - Employee name
-- - Salary
-- Use EXISTS.
-- Order by salary DESC.
-- ===========================================
-- My Solution
SELECT e1.name,
e1.salary
FROM employees e1
WHERE EXISTS
(
SELECT 1
FROM departments e2
WHERE e2.department_id = e1.department_id
)
AND e1.salary > 1800
ORDER BY e1.salary DESC;
