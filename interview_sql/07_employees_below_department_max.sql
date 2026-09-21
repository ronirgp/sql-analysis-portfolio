-- Business request:
-- Find employees whose salary is at least $400 below the highest salary in their department.

-- Return:
-- employee name
-- department ID
-- employee salary
-- highest department salary
-- amount below the highest salary

-- Sort by amount below the highest salary, from smallest to largest.
-- My solution
WITH salary AS (
SELECT name AS employee_name,
department_id,
salary AS employee_salary,
MAX(salary) OVER(PARTITION BY department_id) AS
highest_salary
 FROM employees)
 SELECT employee_name,
 department_id,
 employee_salary,
 highest_salary,
employee_salary - highest_salary AS
amount_below_highest_salary
FROM salary 
WHERE employee_salary - highest_salary <= -400
ORDER BY amount_below_highest_salary  ASC;
 
 
 
