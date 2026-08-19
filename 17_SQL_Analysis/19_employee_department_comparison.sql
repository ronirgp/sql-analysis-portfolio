Management wants to identify employees whose salary
is above the average salary of their department AND
whose salary is at least $2,000.

Return:
- employee name
- department_id
- salary
- department average salary

Only include employees who satisfy BOTH conditions.
Sort by:
1. department_id ASC
2. salary DESC
-- My solution --
WITH employee_comparison AS
(
    SELECT name AS employee_name,
           department_id,
           salary AS employee_salary,
           AVG(salary) OVER(
               PARTITION BY department_id
           ) AS department_average
    FROM employees
)
SELECT employee_name,
       department_id,
       employee_salary,
       department_average
FROM employee_comparison
WHERE employee_salary > department_average
  AND employee_salary >= 2000
ORDER BY department_id ASC,
         employee_salary DESC;