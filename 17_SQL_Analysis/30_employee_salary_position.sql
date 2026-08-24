-- Business Request
-- Management wants to identify employees whose salary is within
--  $300 of the highest salary in their department, but not the highest-paid employee.
-- Return:
-- Employee name
-- Department ID
-- Salary
-- Highest department salary
-- Difference from highest salary

-- Only include employees who meet the requirement.
-- Order by:
-- Difference from highest salary ASC
-- Department ID ASC
-- My solution
WITH paid_salary AS
(
SELECT name AS employee_name,
department_id,
salary AS employee_salary,
MAX(salary) OVER(PARTITION BY department_id
) AS highest_employee_salary
FROM employees
)
SELECT employee_name,
department_id,
employee_salary,
highest_employee_salary,
highest_employee_salary - employee_salary AS
differenece_highest_salary
FROM paid_salary 
WHERE highest_employee_salary - employee_salary > 0
 AND highest_employee_salary - employee_salary <= 300
ORDER BY differenece_highest_salary ASC, department_id ASC;

