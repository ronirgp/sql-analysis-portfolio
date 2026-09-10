-- Show employees who earn at least $500 above their department average OR more than $700 below their department
--  average. Return the employee name, department ID, employee salary, department average salary, and the salary
--  difference from the department average. Sort by salary difference from largest to smallest.
-- My s0lution
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
WHERE employee_salary - department_average_salary >= 500
OR employee_salary - department_average_salary < -700
ORDER BY salary_difference DESC;