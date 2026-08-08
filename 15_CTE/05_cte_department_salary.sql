-- ===========================================
-- CTE Exercise 5
-- Business Request:
-- Create a temporary table named:
-- department_salary
-- containing:
-- - Department ID
-- - Average salary
-- - Total number of employees
-- Calculate the average salary
-- and employee count for each department.
-- Then display only departments where:
-- - Average salary is greater than 1600
-- Order by:
-- 1. Average salary DESC
-- 2. Department ID ASC
-- ===========================================
-- My Solution
WITH department_salary AS 
(
SELECT department_id,
AVG(salary) AS average_salary,
COUNT(*) AS total_employees
FROM employees
GROUP BY department_id
)
SELECT department_id,
average_salary,
total_employees
FROM department_salary
WHERE average_salary > 1600
ORDER BY average_salary DESC, department_id ASC;



