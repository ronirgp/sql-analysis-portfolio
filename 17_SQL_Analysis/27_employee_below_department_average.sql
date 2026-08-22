-- Business Request

-- Management wants to identify employees whose salary is
 -- more than $400 below the average salary of their department.
-- Return:

-- Employee name
-- Department ID
-- Employee salary
-- Department average salary
-- Amount below department average
-- Only include employees who meet the requirement.
-- Order by:
-- Amount below average descending
-- Department ID ascending
-- MY solution 
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
department_average_salary - employee_salary AS
amount_below_average
FROM  average_salary
WHERE department_average_salary - employee_salary > 400

ORDER BY amount_below_average DESC, department_id ASC;