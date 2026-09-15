-- Business request:

-- Find employees who earn at least $700 more than the lowest salary in their department.

-- Show:
-- employee name
-- department ID
-- employee salary
-- lowest department salary
-- amount above the lowest salary
-- Sort by amount above the lowest salary, largest to smallest
WITH salary AS
(SELECT name AS employee_name,
department_id,
salary AS employee_salary,
MIN(salary) OVER(PARTITION BY department_id) AS
lowest_department_salary
FROM employees)
SELECT employee_name,
department_id,
employee_salary,
lowest_department_salary,
employee_salary - lowest_department_salary AS
amount__above_lowest_salary
FROM salary
WHERE employee_salary - lowest_department_salary >= 700
ORDER BY amount__above_lowest_salary DESC;

