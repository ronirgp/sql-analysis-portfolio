-- Business Request
-- Management wants to identify employees who earn more than the average salary of their department.

-- Return:
-- Employee name
-- Department ID
-- Employee salary
-- Department average salary
-- Amount above department average

-- Order by amount above department average descending.
-- My solution
WITH employee_salary AS
(
    SELECT name AS employee_name,
           department_id,
           salary AS employee_salary,
           AVG(salary) OVER(
               PARTITION BY department_id
           ) AS department_average_salary
    FROM employees
)
SELECT employee_name,
       department_id,
       employee_salary,
       department_average_salary,
       employee_salary - department_average_salary AS amount_above_department_average
FROM employee_salary
WHERE employee_salary > department_average_salary
ORDER BY amount_above_department_average DESC;



