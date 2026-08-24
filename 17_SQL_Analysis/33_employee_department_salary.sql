-- Business Request
-- Management wants employees whose salary is higher than the average salary of their department.
-- Return:

-- employee name
-- department ID
-- salary
-- department average salary
-- Sort by department ID ascending, then salary descending.
WITH employee_analysis AS
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
FROM employee_analysis
WHERE employee_salary > department_average_salary
ORDER BY department_id ASC,
         employee_salary DESC;