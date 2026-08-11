-- ===========================================
-- Window Function Exercise 10
-- Business Request:
-- Show:
-- - Employee name
-- - Department ID
-- - Salary
-- Add a column called:
-- employee_rank
-- Rank employees separately within each
-- department based on salary.
-- Highest salary = rank 1.
-- Employees with the same salary must
-- receive the same rank.
-- Also add:
-- previous_salary
-- showing the salary of the employee
-- immediately before the current employee
-- within the same department.
-- Order employees from highest salary
-- to lowest salary within each department.
-- Final result:
-- Department ID ASC
-- Salary DESC
-- ===========================================
-- My Solution
SELECT name,
department_id,
salary,
RANK() OVER(PARTITION BY department_id ORDER BY salary DESC)
 AS employee_rank,
LAG(salary) OVER(PARTITION BY department_id ORDER BY salary DESC
)
AS previous_salary
FROM employees
ORDER BY department_id ASC, salary DESC;
