-- ===========================================
-- SQL Analysis Exercise 1
-- Business Request:
-- Management wants to know who the highest-paid
-- employee is in each department.
-- Show:
-- - Employee name
-- - Department ID
-- - Salary
-- Return only the highest-paid employee
-- from each department.
-- Order by:
-- Department ID ASC
-- ===========================================
-- My Solution
WITH ranked_employees AS
(
    SELECT name,
           department_id,
           salary,
           DENSE_RANK() OVER(
               PARTITION BY department_id
               ORDER BY salary DESC
           ) AS employee_rank
    FROM employees
)
SELECT name,
       department_id,
       salary
FROM ranked_employees
WHERE employee_rank = 1
ORDER BY department_id ASC;