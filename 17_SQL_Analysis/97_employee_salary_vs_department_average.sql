-- Show employees whose salary is more than $300 below their department's average salary. 
-- Return the employee name, department ID, employee salary, department average salary, 
-- and the amount below the department average. Sort by the amount below average from largest to smallest.
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
employee_salary -  department_average_salary AS
amount_bolow_department_average
FROM salary
WHERE employee_salary - department_average_salary < -300
ORDER BY amount_bolow_department_average DESC;