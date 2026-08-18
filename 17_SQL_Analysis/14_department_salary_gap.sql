-- ===========================================
-- SQL Analysis Exercise 14
-- Business Request:
-- Management wants to identify departments
-- where the highest-paid employee earns at
-- least $1,000 more than the lowest-paid
-- employee.
-- Show:
-- - Department ID
-- - Highest salary
-- - Lowest salary
-- - Salary gap
-- Salary gap should be:
-- highest salary - lowest salary
-- Return ONLY departments where the salary
-- gap is greater than or equal to $1,000.
-- Order by:
-- 1. Salary gap DESC
-- 2. Department ID ASC
-- ===========================================
-- My Solution 
SELECT department_id,
MAX(salary) AS highest_salary,
MIN(salary) AS lowest_salary,
MAX(salary) - MIN(salary) AS salary_gap
FROM employees
GROUP BY department_id
HAVING MAX(salary) - MIN(salary) >= 1000
ORDER BY salary_gap DESC, department_id ASC;
