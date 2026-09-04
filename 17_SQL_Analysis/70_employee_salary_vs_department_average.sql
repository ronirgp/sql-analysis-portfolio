-- Find employees whose salary is less than $300 above the average salary of their department.
-- Return:
-- employee name
-- department ID
-- employee salary
-- department average salary
-- amount above department average

-- Only return employees meeting the requirement.
-- Order by amount_above_department_average ascending.
-- My solution
WITH salary AS 
(
SELECT name AS employee_name,
department_id,
salary AS employee_salary,
AVG(salary) OVER(PARTITION BY department_id
) AS department_average_salary
FROM employees
)
SELECT employee_name,
department_id,
employee_salary,
department_average_salary,
employee_salary - department_average_salary AS
amount_above_department_average
FROM salary
WHERE employee_salary - department_average_salary > -300
ORDER BY amount_above_department_average ASC;
