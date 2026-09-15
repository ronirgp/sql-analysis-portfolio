-- Business request:
-- Find employees whose salary is at least $500 below the average salary of their department.

-- Show:
-- employee name
-- department ID
-- employee salary
-- department average salary
-- amount below the department average
-- Sort by amount below average, from smallest to largest.
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
amount_below_average_salary
FROM salary 
WHERE employee_salary - department_average_salary <= -500
ORDER BY amount_below_average_salary  ASC;
