-- Find employees who are not the highest-paid employee in their department and whose
--  salary is at least $500 below the highest salary in their department.

-- Return:
-- employee name
-- department ID
-- employee salary
-- highest department salary
-- amount below highest salary
-- salary rank within department

-- If two employees have the same salary, they should receive the same rank.
-- Order by amount_below_highest_salary descending, then department_id ascending.
-- My soluton
WITH salary AS 
( SELECT name AS employee_name,
department_id,
salary AS employee_salary,
MAX(salary) OVER(PARTITION BY department_id) AS highest_department_salary,
RANK() OVER(PARTITION BY department_id ORDER by salary DESC) AS salary_rank_within_department
FROM employees)
SELECT employee_name,
       department_id,
       employee_salary,
       highest_department_salary,
       employee_salary - highest_department_salary AS amount_below_highest_salary,
       salary_rank_within_department
FROM salary
WHERE employee_salary != highest_department_salary
  AND employee_salary - highest_department_salary <= -500
ORDER BY amount_below_highest_salary DESC,
         department_id ASC;