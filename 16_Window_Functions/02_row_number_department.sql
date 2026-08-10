-- ===========================================
-- Window Function Exercise 2
-- Business Request:
-- Show:
-- - Employee name
-- - Department ID
-- - Salary
-- Add a column called:
-- department_number
-- Number employees separately within each
-- department, starting from the highest salary.
-- Order the final result by:
-- 1. Department ID ASC
-- 2. Salary DESC
-- ===========================================
-- My Solution
SELECT name,
       department_id,
       salary,
       ROW_NUMBER() OVER(
           PARTITION BY department_id
           ORDER BY salary DESC
       ) AS department_number
FROM employees
ORDER BY department_id ASC,
         salary DESC;