-- ===========================================
-- Correlated Subquery Exercise 26
-- Business Request:
-- Show employees whose salary is
-- LESS THAN
-- the department maximum
-- AND
-- NOT EQUAL TO
-- the department average.
-- Show:
-- - Employee name
-- - Department ID
-- - Salary
-- Use:
-- - One correlated subquery for MAX
-- - One correlated subquery for AVG
-- Sort by:
-- 1. Department ID
-- 2. Salary (highest to lowest)
-- ===========================================
-- My Solution
SELECT e1.name,
e1.department_id,
e1.salary
FROM employees e1
WHERE e1.salary <
(SELECT MAX(e2.salary)
FROM employees e2
WHERE e2.department_id = e1.department_id
)
AND e1.salary <>
(SELECT AVG(e2.salary)
FROM employees e2
WHERE e2.department_id = e1.department_id
)
ORDER BY e1.department_id, e1.salary DESC;