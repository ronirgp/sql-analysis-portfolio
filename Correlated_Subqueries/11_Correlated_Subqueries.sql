-- ===========================================
-- Correlated Subquery Exercise 11
-- Business Request:
-- Show employees whose salary is
-- LESS THAN OR EQUAL TO
-- the average salary
-- of their own department.
-- Show:
-- - Employee name
-- - Department ID
-- - Salary
-- Use:
-- - One correlated subquery
-- Sort by:
-- 1. Department ID
-- 2. Salary (lowest to highest)
-- ===========================================
-- My Solution
SELECT e1.name,
e1.department_id,
e1.salary
FROM employees e1
WHERE e1.salary <=
(SELECT AVG(e2.salary)
FROM employees e2
WHERE e2.department_id = e1.department_id
)
ORDER BY e1.department_id, e1.salary ASC;