-- Find employees whose salary is more than $600 below the highest salary in their department.
-- Return:
-- employee name
-- department ID
-- employee salary
-- highest department salary
-- amount below highest salary
-- Only return employees meeting the $600 requirement.
-- Order by amount_below_highest_salary descending.
-- My solution
WITH salary AS 
(
SELECT name AS employee_name,
department_id,
salary AS employee_salary,
MAX(salary) OVER(PARTITION BY department_id
) AS highest_department_salary
FROM employees
)
SELECT employee_name,
department_id,
employee_salary,
highest_department_salary,
employee_salary - highest_department_salary AS
amout_below_highest_salary
FROM salary 
WHERE employee_salary - highest_department_salary < -600
ORDER BY amout_below_highest_salary DESC;