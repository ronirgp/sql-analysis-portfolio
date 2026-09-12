-- “Show the highest-paid employee in each department. Return the employee name, department ID, and salary.
--  If multiple employees have the same highest salary in a department, return all of them.
--  Sort by department ID ascending and salary descending.”
-- My solution
WITH  salary AS
(
SELECT name AS employee_name,
department_id,
salary AS employee_salary,
MAX(salary) OVER(PARTITION BY department_id
) AS highest_salary
FROM employees
)
SELECT employee_name,
department_id,
employee_salary,
highest_salary
FROM salary 
WHERE employee_salary = highest_salary
ORDER BY department_id ASC, employee_salary DESC;

