-- Business request:
-- Management wants to identify employees who are paid significantly more than the lowest-paid employee in their department.

-- Show:
-- employee name
-- department ID
-- employee salary
-- lowest salary in the department
-- amount the employee earns above the department minimum

-- Only include employees earning more than $700 above their department's lowest salary.
-- Sort by the amount above the minimum, largest to smallest.
-- My solution
WITH salary AS
(SELECT name AS employee_name,
department_id,
salary AS employee_salary,
MIN(salary) OVER(PARTITION BY department_id) AS
lowest_department_salary
FROM employees)
SELECT employee_name,
department_id,
employee_salary,
lowest_department_salary,
employee_salary - lowest_department_salary AS 
amount_above_minimun_salary
FROM salary 
WHERE employee_salary - lowest_department_salary > 700

ORDER BY amount_above_minimum_salary DESC;
