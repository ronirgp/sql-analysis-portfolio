-- Find employees whose salary is more than $700 above the lowest salary in their department.

-- Return:
-- employee name
-- department ID
-- employee salary
-- lowest department salary
-- amount above lowest salary

-- Only return employees meeting the $700 requirement.
-- Order by amount_above_lowest_salary descending.
-- My solution
WITH salary AS 
(
SELECT name AS employee_name,
department_id,
salary AS employee_salary,
MIN(salary) OVER(PARTITION BY department_id
) AS lowest_department_salary
FROM employees
)
SELECT employee_name,
department_id,
employee_salary,
lowest_department_salary,
employee_salary - lowest_department_salary AS 
amount_above_lowest_salary
FROM salary
WHERE employee_salary - lowest_department_salary > 700
ORDER BY amount_above_lowest_salary DESC;

