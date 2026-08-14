-- ===========================================
-- SQL Analysis Exercise 10
-- Business Request:
-- Management wants to identify employees
-- who earn more than their manager.
-- Show:
-- - Employee name
-- - Manager name
-- - Employee salary
-- - Manager salary
-- - Department ID
-- Return ONLY employees whose salary is
-- greater than their manager's salary.
-- Order by:
-- 1. Department ID ASC
-- 2. Employee salary DESC
-- ===========================================
-- My Solution
SELECT e1.name AS employee_name,
       e2.name AS manager_name,
       e1.salary AS employee_salary,
       e2.salary AS manager_salary,
       e1.department_id AS department_id
FROM employees e1
INNER JOIN employees e2
    ON e1.manager_id = e2.employee_id
WHERE e1.salary > e2.salary
ORDER BY e1.department_id ASC,
         e1.salary DESC;

