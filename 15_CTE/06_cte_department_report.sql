-- ===========================================
-- CTE Exercise 6
-- Business Request:
-- Create a temporary table named:
-- department_report
-- containing:
-- - Department ID
-- - Average salary
-- - Highest salary
-- - Total number of employees
-- Calculate these values for each department.
-- Then display only departments where:
-- - Highest salary is greater than 2200
-- Order by:
-- 1. Highest salary DESC
-- 2. Average salary DESC
-- 3. Department ID ASC
-- ===========================================
-- My Solution
WITH department_report AS
(
SELECT department_id,
AVG(salary) AS average_salary,
MAX(salary)  AS highest_salary,
COUNT(*) AS total_employees
FROM employees
GROUP BY department_id
)
SELECT department_id,
average_salary,
 highest_salary,
 total_employees
 FROM department_report
 WHERE highest_salary > 2200
 ORDER BY  highest_salary DESC, average_salary DESC, department_id ASC;
 


