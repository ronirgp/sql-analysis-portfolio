-- Find employees whose salary is exactly $500 below the highest salary in their department.

-- Return:
-- employee name
-- department ID
-- employee salary
-- highest department salary
-- amount below highest salary

-- Only return employees meeting the requirement.
-- Order by amount_below_highest_salary ascending.
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
amount_below_highest_salary
FROM salary
WHERE employee_salary - highest_department_salary = -500 
ORDER BY amount_below_highest_salary ASC;