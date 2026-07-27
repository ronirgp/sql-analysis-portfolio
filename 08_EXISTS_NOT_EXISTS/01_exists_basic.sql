-- ===========================================
-- EXISTS Exercise 1
-- Business Request:
-- Show every employee that belongs
-- to a department that exists.
-- Show:
-- Employee name
-- Salary
-- Use:
-- EXISTS
-- Sort by employee name.
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
);