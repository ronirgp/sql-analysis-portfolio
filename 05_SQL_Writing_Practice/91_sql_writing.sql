-- ===========================================
-- SQL Writing Exercise 91
-- Business Request:
-- The HR Manager wants a report showing:
-- - Employee name
-- - Department name
-- - Salary
-- Use table aliases:
-- employees AS e
-- departments AS d
-- Show only employees
-- earning at least $1400.
-- Sort by salary
-- from highest to lowest.
-- ===========================================
-- My Solution
SELECT e.name,
d.department_name,
e.salary
FROM employees AS e
LEFT JOIN departments AS d
ON e.department_id = d.department_id
WHERE e.salary >= 1400
ORDER BY e.salary DESC;