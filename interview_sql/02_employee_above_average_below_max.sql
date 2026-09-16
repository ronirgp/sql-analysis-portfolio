-- Interview Simulation #2
-- A manager wants a report identifying employees who earn more than their department's average salary 
-- but less than the highest-paid employee in that department.

-- Return:
-- employee name
-- department ID
-- employee salary
-- department average salary
-- highest department salary
-- Sort by employee salary, highest to lowest
WITH salary AS 
(SELECT name AS employee_name,
department_id,
salary AS employee_salary,
AVG(salary) OVER(PARTITION BY department_id) AS department_average_salary,
MAX(salary) OVER(PARTITION BY department_id) AS highest_department_salary
FROM employees)
SELECT employee_name,
department_id,
employee_salary,
department_average_salary,
highest_department_salary
FROM salary 
WHERE employee_salary > department_average_salary
AND employee_salary < highest_department_salary
ORDER BY employee_salary DESC;

