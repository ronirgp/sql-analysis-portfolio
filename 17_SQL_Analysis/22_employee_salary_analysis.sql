-- ===========================================
-- SQL Analysis Exercise 22
-- Management wants to review employees whose
-- salary is below the highest salary in their
-- department but above the department average.
-- Show:
-- - Employee name
-- - Department ID
-- - Salary
-- - Department average salary
-- - Department highest salary
-- Return ONLY employees satisfying BOTH conditions.
-- Order by:
-- 1. Department ID ASC
-- 2. Salary DESC
-- ===========================================
-- My Solution
WITH department_analysis AS
(
    SELECT name AS employee_name,
           department_id,
           salary AS employee_salary,
           AVG(salary) OVER(
               PARTITION BY department_id
           ) AS department_average_salary,
           MAX(salary) OVER(
               PARTITION BY department_id
           ) AS department_highest_salary
    FROM employees
)
SELECT employee_name,
       department_id,
       employee_salary,
       department_average_salary,
       department_highest_salary
FROM department_analysis
WHERE employee_salary < department_highest_salary
  AND employee_salary > department_average_salary
ORDER BY department_id ASC,
         employee_salary DESC;
