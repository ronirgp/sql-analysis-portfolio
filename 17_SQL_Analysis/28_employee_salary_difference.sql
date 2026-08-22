-- Business Request
-- Management wants to identify employees whose salary is at least $700 higher 
-- than the lowest salary in their department.
-- Return:
-- Employee name
-- Department ID
-- Employee salary
-- Lowest department salary
-- Amount above lowest salary
-- Only include employees who meet the requirement.
-- Order by:
-- Amount above lowest salary DESC
-- Department ID ASC
-- MY solution
WITH employee_salary AS 
(
SELECT name AS employee_name,
department_id ,
salary AS employee_salary,
MIN(salary) OVER(PARTITION BY department_id
) AS department_lowest_salary
FROM employees
)
SELECT employee_name,
department_id,
employee_salary, 
department_lowest_salary,
department_lowest_salary - employee_salary AS
amount_above_lowest_salary
FROM employee_salary
WHERE employee_salary - department_lowest_salary >= 700
ORDER BY amount_above_lowest_salary DESC, department_id ASC;

