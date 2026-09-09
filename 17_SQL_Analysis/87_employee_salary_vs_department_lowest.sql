-- Show employees who earn at least $600 more than the lowest-paid employee in their department.
-- Return the employee name, department ID, employee salary, the lowest
 -- salary in the department, and the amount above the department minimum.
 -- Sort by  the amount above the department minimum from largest to smallest.
 -- My solution
 WITH salary AS
(
    SELECT
        name AS employee_name,
        department_id,
        salary AS employee_salary,
        MIN(salary) OVER(PARTITION BY department_id) AS lowest_department_salary
    FROM employees
)
SELECT
    employee_name,
    department_id,
    employee_salary,
    lowest_department_salary,
    employee_salary - lowest_department_salary AS amount_above_department_minimum
FROM salary
WHERE employee_salary - lowest_department_salary >= 600
ORDER BY amount_above_department_minimum DESC;