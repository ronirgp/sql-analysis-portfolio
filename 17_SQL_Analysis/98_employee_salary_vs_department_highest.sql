-- Show employees whose salary is less than $400 below the highest salary in their department.
--  Return the employee name, department ID, employee salary, highest department salary, 
-- and the amount below the department maximum. Sort by the amount below the maximum from largest to smallest.
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
employee_salary -  highest_department_salary AS
amount_below_maximun_salary
FROM salary
WHERE employee_salary - highest_department_salary < -400
ORDER BY amount_below_maximun_salary DESC;