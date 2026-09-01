-- Business Request
-- Management wants to see every employee's salary rank within their department. 
-- Employees with the same salary should receive the same rank.

-- Return:
-- Employee name
-- Department ID
-- Salary
-- Salary rank

-- Order by department ID ascending, then salary rank ascending.
-- My solution
WITH employee_salary AS
(
    SELECT name AS employee_name,
           department_id,
           salary AS employee_salary,
           RANK() OVER(
               PARTITION BY department_id
               ORDER BY salary DESC
           ) AS salary_rank
    FROM employees
)
SELECT employee_name,
       department_id,
       employee_salary,
       salary_rank
FROM employee_salary
ORDER BY department_id ASC,
         salary_rank ASC;