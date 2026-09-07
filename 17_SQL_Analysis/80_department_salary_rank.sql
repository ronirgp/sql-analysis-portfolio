-- Find the highest-paid employee in each department.

-- Return:
-- employee name
-- department ID
-- employee salary
-- salary rank within the department
-- If two employees have the same salary, they should receive the same rank.
-- Order by department ID ascending, then salary rank ascending.
-- My solution
WITH salary AS 
(
SELECT name AS employee_name,
department_id,
salary AS employee_salary,
RANK() OVER(PARTITION BY department_id ORDER BY salary DESC
) AS salary_rank
FROM employees
)
SELECT employee_name,
department_id,
employee_salary
salary_rank
FROM salary
WHERE  salary_rank = 1
ORDER BY department_id ASC, salary_rank ASC;
