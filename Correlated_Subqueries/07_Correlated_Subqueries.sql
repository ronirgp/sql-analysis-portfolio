-- ===========================================
-- Correlated Subquery Exercise 7
-- Business Request:
-- Show employees who earn
-- LESS than the average salary
-- of their own department
-- BUT are NOT the lowest-paid employee
-- in that department.
-- Show:
-- - Employee name
-- - Department ID
-- - Salary
-- Use:
-- - One correlated subquery for AVG
-- - One correlated subquery for MIN
-- Sort by:
-- 1. Department ID
-- 2. Salary (lowest to highest)
-- ===========================================
-- My Solution
SELECT e1.name,
e1.department_id,
e1.salary
FROM employees e1
WHERE e1.salary <
(SELECT AVG(e2.salary)
FROM employees e2
WHERE e2.department_id = e1.department_id
)
AND e1.salary <>
(SELECT MIN(e2.salary)
FROM employees e2
WHERE e2.department_id = e1.department_id
)
ORDER BY e1.department_id, e1.salary ASC;
