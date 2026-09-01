-- Business Request
-- Find employees whose salary is below the average salary of their department.

-- Return:
-- Employee name
-- Department ID
-- Employee salary
-- Department average salary

-- Order by department ID ascending, then employee salary ascending.
-- My solution
WITH average_salary AS
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
       department_average_salary
FROM average_salary
WHERE employee_salary < department_average_salary
ORDER BY department_id ASC,
         employee_salary ASC;