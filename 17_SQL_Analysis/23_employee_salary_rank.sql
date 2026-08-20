-- ===========================================
-- SQL Analysis Exercise 23
-- Management wants to see how each employee's
-- salary compares with other employees in the
-- same department.
-- Show:
-- - Employee name
-- - Department ID
-- - Salary
-- - Salary rank within the department
-- Employees with the same salary should receive
-- the same rank.
-- Do NOT skip the next rank after a tie.
-- Order by:
-- 1. Department ID ASC
-- 2. Salary rank ASC
-- 3. Employee name ASC
-- ===========================================
-- My Solution
SELECT name AS employee_name,
       department_id,
       salary AS employee_salary,
       DENSE_RANK() OVER(
           PARTITION BY department_id
           ORDER BY salary DESC
       ) AS department_salary_rank
FROM employees
ORDER BY department_id ASC,
         department_salary_rank ASC,
         employee_name ASC;