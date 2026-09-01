-- Business Request

-- Management wants to identify the highest-paid employee in each department. 
-- If multiple employees have the same highest salary, return all of them.

-- Return:
-- Employee name
-- Department ID
-- Salary
-- My solution

WITH employee_salary AS
(
    SELECT name AS employee_name,
           department_id,
           salary AS employee_salary,
           MAX(salary) OVER(
               PARTITION BY department_id
           ) AS highest_salary
    FROM employees
)
SELECT employee_name,
       department_id,
       employee_salary
FROM employee_salary
WHERE employee_salary = highest_salary
ORDER BY department_id ASC,
         employee_salary DESC;