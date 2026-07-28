-- ===========================================
-- NOT EXISTS Exercise 2
-- Business Request:
-- Show departments that have
-- NO employees assigned.
-- Show:
-- - Department ID
-- - Department Name
-- Use:
-- NOT EXISTS
-- Order by department name ASC.
-- ===========================================
-- My Solution
SELECT d1.department_id,
       d1.department_name
FROM departments d1
WHERE NOT EXISTS
(
    SELECT 1
    FROM employees e1
    WHERE e1.department_id = d1.department_id
)
ORDER BY d1.department_name ASC;
