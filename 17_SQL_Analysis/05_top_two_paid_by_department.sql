-- ===========================================
-- SQL Analysis Exercise 5
-- Business Request:
-- Management wants to see the TWO highest-paid
-- employees from every department.
-- Show:
-- - Employee name
-- - Department ID
-- - Salary
-- Return only the top 2 salary positions
-- from each department.
-- If two employees have the same salary,
-- they should have the same ranking.
-- Order by:
-- 1. Department ID ASC
-- 2. Salary DESC
-- ===========================================
-- My Solution 
WITH top_2_highest_paid AS
(
SELECT name,
department_id,
salary,
RANK() OVER(PARTITION BY department_id ORDER by salary DESC
) AS top_highest_paid
FROM employees)
SELECT name,
department_id,
salary
FROM top_2_highest_paid
WHERE top_highest_paid <= 2
ORDER BY department_id ASC, salary DESC;
