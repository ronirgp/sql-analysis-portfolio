-- ===========================================
-- UNION Exercise 3
-- Business Request:
-- Show:
-- - Employee name
-- - Department ID
-- From:
-- Department 1
-- Department 2
-- Department 3
-- Display them as one list.
-- Remove duplicates.
-- Order by:
-- 1. Department ID ASC.
-- 2. Employee name ASC.
-- ===========================================
-- My Solution
SELECT name,
       department_id
FROM employees
WHERE department_id = 1

UNION

SELECT name,
       department_id
FROM employees
WHERE department_id = 2

UNION

SELECT name,
       department_id
FROM employees
WHERE department_id = 3
ORDER BY department_id ASC,
         name ASC;
