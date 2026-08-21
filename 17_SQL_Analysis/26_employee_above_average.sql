-- Business Request
-- Management wants to find employees whose salary is 
-- more than $300 above the average salary of their department.
-- Show:

-- Employee name
-- Department ID
-- Salary
-- Department average salary
-- Amount above department average
-- return only qualifying employees.
-- Order by amount above average descending.--
-- My solution
WITH average_salary AS
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
employee_salary - department_average_salary 
AS amount_above_average
FROM average_salary 
WHERE employee_salary - department_average_salary > 300
ORDER BY  amount_above_average DESC;


_
