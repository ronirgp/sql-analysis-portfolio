-- ===========================================
-- SQL Analysis Exercise 24
-- Management wants to identify employees who
-- are among the top 2 salary levels in their
-- department.
-- Show:
-- - Employee name
-- - Department ID
-- - Salary
-- - Salary rank within the department
-- If employees have the same salary, they
-- should have the same rank.
-- Return only employees whose salary rank
-- is 2 or better.
-- Order by:
-- 1. Department ID ASC
-- 2. Salary rank ASC
-- 3. Salary DESC
-- 4. Employee name ASC
-- ===========================================
-- My Solution
WITH ranked_employees AS
(
    SELECT name AS employee_name,
           department_id,
           salary AS employee_salary,
           DENSE_RANK() OVER(
               PARTITION BY department_id
               ORDER BY salary DESC
           ) AS salary_rank
    FROM employees
)
SELECT employee_name,
       department_id,
       employee_salary,
       salary_rank
FROM ranked_employees
WHERE salary_rank <= 2
ORDER BY department_id ASC,
         salary_rank ASC,
         employee_salary DESC,
         employee_name ASC;

