-- “Show employees who earn more than their manager OR earn at least $500 above their department average. 
-- Return the employee name, manager name, department ID, employee salary, manager salary, and salary difference 
-- from their manager. Only include employees who have a manager. Sort by salary difference from largest to smallest.”
-- My solution
WITH salary AS (
    SELECT
        e1.name AS employee_name,
        e2.name AS manager_name,
        e1.department_id,
        e1.salary AS employee_salary,
        e2.salary AS manager_salary,
        AVG(e1.salary) OVER(
            PARTITION BY e1.department_id
        ) AS department_average_salary
    FROM employees e1
    INNER JOIN employees e2
        ON e1.manager_id = e2.employee_id
)
SELECT
    employee_name,
    manager_name,
    department_id,
    employee_salary,
    manager_salary,
    employee_salary - manager_salary AS salary_difference
FROM salary
WHERE employee_salary > manager_salary
   OR employee_salary - department_average_salary >= 500
ORDER BY salary_difference DESC;