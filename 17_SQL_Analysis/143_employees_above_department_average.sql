-- Business request:

-- Find employees whose salary is at least $400 above the average salary of their department.

-- Show:
-- employee name
-- department ID
-- employee salary
-- department average salary
-- amount above the department average
-- Sort by amount above average, largest to smallest.
-- My solution
WITH salary AS 
(SELECT name AS employee_name,
department_id,
salary AS employee_salary,
AVG(salary) OVER(PARTITION BY department_id)
AS department_average_salary
FROM employees)
SELECT employee_name,
department_id,
employee_salary,
department_average_salary,
employee_salary - department_average_salary AS 
amount_above_average_salary
FROM salary 
WHERE employee_salary - department_average_salary >= 400
ORDER BY amount_above_average_salary  DESC;
