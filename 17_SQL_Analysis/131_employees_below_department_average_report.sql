-- Business request:
-- Management wants a report of employees whose salary is below their department's -- average salary.

-- Return:
-- employee name
-- department ID
-- employee salary
-- department average salary
-- amount below department average
-- Sort by amount below the department average, from the largest amount below to the smallest.
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
amount_below_average_salary
FROM salary
WHERE employee_salary < department_average_salary
ORDER BY amount_below_average_salary DESC;
