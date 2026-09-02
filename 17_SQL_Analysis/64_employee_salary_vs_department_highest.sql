-- Business Request
-- Find employees whose salary is at least $500 lower than the highest salary in their department.
-- Return:
-- Employee name
-- Department ID
-- Employee salary
-- Highest department salary
-- Amount below the highest salary

-- Only return employees meeting the $500 requirement.
-- Order by amount below highest salary descending.
-- My solution
WITH salary AS
(
SELECT name AS employee_name,
department_id,
salary AS employee_salary,
MAX(salary) OVER(PARTITION BY department_id
) AS highest_department_salary
FROM employees
)
SELECT employee_name,
department_id,
employee_salary,
highest_department_salary,
employee_salary - highest_department_salary AS
amount_below_highest_salary
FROM salary
WHERE employee_salary - highest_department_salary <= -500
ORDER BY amount_below_highest_salary DESC;