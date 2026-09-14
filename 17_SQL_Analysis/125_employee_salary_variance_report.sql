-- Business request:
-- Management wants to identify employees whose salary is significantly different from the average salary in their department.
-- Show:
-- employee name
-- department ID
-- employee salary
-- department average salary
-- difference between the employee's salary and the department average
-- Only show employees whose salary is at least $400 above or at least $400 below their department average.

-- Sort by the salary difference from largest to smallest.
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
salary_difference
FROM salary 
WHERE employee_salary - department_average_salary >= 400
OR employee_salary - department_average_salary <= -400
ORDER BY salary_difference DESC;

