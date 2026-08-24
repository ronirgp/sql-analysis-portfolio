-- Business Request
-- Management wants to identify employees whose salary is 
-- higher than every other employee in their department except the highest-paid employee.
-- Return:
-- Employee name
-- Department ID
-- Salary
-- Salary rank within the department

-- If multiple employees share the same salary, they should receive the same rank.
-- Only return employees with salary rank 2.
-- Order by:

-- Department ID ASC
-- Salary DESC
-- Employee name ASC
-- MY solution
WITH paid_employee_salary AS
(
    SELECT name AS employee_name,
           department_id,
           salary AS employee_salary,
           DENSE_RANK() OVER(
               PARTITION BY department_id
               ORDER BY salary DESC
           ) AS employee_salary_rank
    FROM employees
)
SELECT employee_name,
       department_id,
       employee_salary,
       employee_salary_rank
FROM paid_employee_salary
WHERE employee_salary_rank = 2
ORDER BY department_id ASC,
         employee_salary DESC,
         employee_name ASC;