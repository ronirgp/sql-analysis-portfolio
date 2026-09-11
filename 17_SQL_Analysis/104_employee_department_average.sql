-- “Show employees who earn more than the average salary of their department. Return the employee name,
--  department ID, employee salary, and department average salary. Sort by employee salary from highest to lowest.”
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
department_average_salary
FROM salary 
WHERE employee_salary > department_average_salary
ORDER BY employee_salary DESC;
