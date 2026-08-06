-- ===========================================
-- UNION ALL Exercise 2
-- Business Request:
-- Show the names of employees
-- from:
-- Department 1
-- Department 2
-- Display them as one list.
-- KEEP duplicates.
-- Order by:
-- Employee name ASC.
-- ===========================================
-- My Solution
SELECT name,
department_id
FROM employees
WHERE department_id = 1 

UNION ALL

SELECT name,
department_id
FROM employees
WHERE department_id = 2
ORDER BY name ASC;


