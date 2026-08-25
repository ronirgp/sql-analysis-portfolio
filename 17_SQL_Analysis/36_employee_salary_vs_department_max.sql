-- Business Request
-- Management wants employees who earn exactly the highest salary in their department.
-- Return:

-- employee name
-- department ID
-- salary
-- If two employees share the highest salary, return both.
-- Order by:

-- department ID ASC
-- salary DESC
-- employee name ASC
-- My solution
WITH employee_salary AS
(
SELECT name AS employee_name,
department_id,
salary AS employee_salary,
MAX(salary) OVER(PARTITION BY department_id
) AS department_salary
FROM employees
)
SELECT employee_name,
department_id,
employee_salary
FROM employee_salary
WHERE employee_salary = department_salary
ORDER BY department_id ASC, employee_salary DESC, employee_name ASC;

