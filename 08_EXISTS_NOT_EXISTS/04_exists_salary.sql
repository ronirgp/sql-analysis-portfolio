-- ===========================================
-- EXISTS Exercise 4
-- Business Request:
-- Show employees whose department exists
-- AND whose salary is BETWEEN
-- 1500 AND 2200.
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
AND e1.salary BETWEEN 1500 AND 2200
ORDER BY e1.salary DESC;