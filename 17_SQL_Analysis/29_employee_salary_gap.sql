-- Business Request
-- Management wants to identify employees whose salary is 
-- more than $500 below the highest salary in their department.
-- Return:
-- Employee name
-- Department ID
-- Employee salary
-- Highest department salary
-- Amount below highest salary

-- Only include employees who meet the requirement.
-- Order by:
-- Amount below highest salary DESC
-- Department ID ASC
-- MY solution
WITH employee_salary AS 
(
SELECT name AS employee_name,
department_id,
salary AS employee_salary,
MAX(salary) OVER(PARTITION BY department_id
) AS department_highest_salary
FROM employees
)
SELECT employee_name,
department_id,
employee_salary,
department_highest_salary,
department_highest_salary - employee_salary  AS
amount_below_highest_salary
FROM  employee_salary
WHERE department_highest_salary - employee_salary > 500
ORDER BY amount_below_highest_salary DESC, department_id ASC;




