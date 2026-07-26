-- ===========================================
-- Correlated Subquery Exercise 23
-- Business Request:
-- Show employees whose salary is
-- NOT EQUAL TO the department average
-- AND
-- NOT EQUAL TO the department maximum.
-- Show:
-- - Employee name
-- - Department ID
-- - Salary
-- Use:
-- - One correlated subquery for AVG
-- - One correlated subquery for MAX
-- Sort by:
-- 1. Department ID
-- 2. Employee name (A-Z)
-- ===========================================
-- My Solution
SELECT e1.name,
e1.department_id,
e1.salary
FROM employees e1
WHERE e1.salary <>
(SELECT AVG(e2.salary)
FROM employees e2
WHERE e2.department_id = e1.department_id
)
AND e1.salary <>
(SELECT MAX(e2.salary)
FROM employees e2
WHERE e2.department_id = e1.department_id
)
ORDER BY e1.department_id,  e1.name DESC;