-- ===========================================
-- CTE Exercise 7
--
-- Business Request:
-- Create a temporary table named:
-- department_analysis
-- containing:
-- - Department ID
-- - Average salary
-- - Lowest salary
-- - Highest salary
-- - Total number of employees
-- Calculate these values for each department.
-- Then display only departments where:
-- - Average salary is greater than 1500
-- - Highest salary is greater than 2000
-- Order by:
-- 1. Average salary DESC
-- 2. Highest salary DESC
-- 3. Department ID ASC
-- ===========================================
-- My Solution
WITH department_analysis AS
(
SELECT department_id,
AVG(salary) AS average_salary,
MIN(salary) AS lowest_salary,
MAX(salary) AS highest_salary,
COUNT(*) AS total_employees
FROM employees
GROUP BY department_id
)
SELECT department_id, average_salary,
lowest_salary,  highest_salary,
total_employees
FROM department_analysis
WHERE average_salary > 1500
AND highest_salary > 2000
ORDER BY average_salary DESC, highest_salary DESC, department_id ASC;

