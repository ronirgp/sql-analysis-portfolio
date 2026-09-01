-- Business Request
-- Management wants to identify employees who earn less than the highest salary in their department.

-- Return:
-- Employee name
-- Department ID
-- Employee salary
-- Department highest salary
-- Amount below department highest salary

-- Order by amount below department highest salary descending.
-- My solution
WITH employee_salary AS 
(
SELECT name AS employee_name,
department_id,
salary AS employee_salary,
MAX(salary) OVER(PARTITION BY department_id
) AS department_max_salary
FROM employees
)
SELECT employee_name,
department_id,
employee_salary,
department_max_salary, 
employee_salary - department_max_salary AS 
amount_below_department_highest_salary
FROM employee_salary
WHERE employee_salary < department_max_salary
ORDER BY amount_below_department_highest_salary DESC;
