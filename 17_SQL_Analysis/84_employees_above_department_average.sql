-- A manager asks:

-- “Show me the employees who earn more than the average salary of their own department. I need their name,
--  department ID, salary, and the department average. Sort them from the largest salary difference
--  above the department average to the smallest.”
-- My solution
WITH salary AS (
    SELECT
        name AS employee_name,
        department_id,
        salary AS employee_salary,
        AVG(salary) OVER(PARTITION BY department_id) AS department_average_salary
    FROM employees
)
SELECT
    employee_name,
    department_id,
    employee_salary,
    department_average_salary,
    employee_salary - department_average_salary AS amount_above_department_average
FROM salary
WHERE employee_salary > department_average_salary
ORDER BY amount_above_department_average DESC;
