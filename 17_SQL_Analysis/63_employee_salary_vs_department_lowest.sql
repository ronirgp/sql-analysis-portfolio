-- Business Request
-- Find employees whose salary is more than $700 higher than the lowest salary in their department.

-- Return:
-- Employee name
-- Department ID
-- Employee salary
-- Lowest department salary

-- Only return employees who meet the $700 requirement.
-- Order by employee salary descending.
-- My solution
WITH salary AS
(
    SELECT name AS employee_name,
           department_id,
           salary AS employee_salary,
           MIN(salary) OVER(
               PARTITION BY department_id
           ) AS lowest_department_salary
    FROM employees
)
SELECT employee_name,
       department_id,
       employee_salary,
       lowest_department_salary
FROM salary
WHERE employee_salary - lowest_department_salary > 700
ORDER BY employee_salary DESC;