-- ===========================================
-- Correlated Subquery Exercise 28
-- Business Request:
-- Show employees whose salary is
-- GREATER THAN OR EQUAL TO
-- the department minimum
-- AND
-- LESS THAN OR EQUAL TO
-- the department maximum.
-- Show:
-- - Employee name
-- - Department ID
-- - Salary
-- Use:
-- - One correlated subquery for MIN
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
WHERE e1.salary >=
(SELECT MIN(e2.salary)
FROM employees e2
WHERE e2.department_id = e1.department_id
)
AND e1.salary <=
(SELECT MAX(e2.salary)
FROM employees e2
WHERE e2.department_id = e1.department_id
)
ORDER BY e1.department_id, e1.name ASC;
