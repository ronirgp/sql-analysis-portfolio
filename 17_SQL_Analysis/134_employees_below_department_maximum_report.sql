-- Business request:
-- Management wants a report identifying employees who earn at least $500 less than the highest-paid employee in their department.

-- Show:
-- employee name
-- department ID
-- employee salary
-- highest salary in the department
-- amount below the department maximum
-- Sort by the amount below the maximum from largest gap to smallest gap.
-- My solution
WITH salary AS 
(SELECT name AS employee_name,
department_id,
salary AS employee_salary,
MAX(salary) OVER(PARTITION BY department_id)
AS highest_department_salary
FROM employees)
SELECT employee_name,
department_id,
employee_salary,
highest_department_salary,
employee_salary - highest_department_salary AS 
salary_gap_below_maximum
FROM salary 
WHERE employee_salary - highest_department_salary <= -500
ORDER BY salary_gap_below_maximum DESC;
