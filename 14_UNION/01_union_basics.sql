-- ===========================================
-- UNION Exercise 1
-- Business Request:
-- Show the names of employees
-- from:
-- Department 1
-- Department 2
-- Display them as one list.
-- Order by employee name ASC.
-- ===========================================
-- My Solution 
SELECT name
FROM employees
WHERE department_id = 1

UNION

SELECT name
FROM employees
WHERE department_id = 2

ORDER BY name ASC;