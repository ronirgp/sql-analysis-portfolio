-- Find employees whose salary is higher than the average salary of their department.

-- Return:
-- employee name
-- department ID
-- employee salary
-- department average salary
-- salary rank within the department

-- If two employees have the same salary, they should receive the same rank.
-- Only return employees whose salary is above their department average.
-- Order by department ID ascending, then salary rank ascending.
-- My solution
WITH salary AS 
(
    SELECT name AS employee_name,
           department_id,
           salary AS employee_salary,
           AVG(salary) OVER(
               PARTITION BY department_id
           ) AS department_average_salary,
           RANK() OVER(
               PARTITION BY department_id
               ORDER BY salary DESC
           ) AS salary_rank_within_department
    FROM employees
)
SELECT employee_name,
       department_id,
       employee_salary,
       department_average_salary,
       salary_rank_within_department
FROM salary
WHERE employee_salary > department_average_salary
ORDER BY department_id ASC, salary_rank_within_department ASC;
