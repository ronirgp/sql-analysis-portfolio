-- Business Request

-- Management wants to see the highest-paid employee in each department.
-- Return:

-- Employee name
-- Department ID
-- Salary

-- If two employees tie for the highest salary, return both.
-- Order by department ID ascending, then salary descending.
-- My solution
WITH highest_salary_paid AS
(
SELECT name AS employee_name,
department_id,
salary AS employee_salary,
MAX(salary) OVER(PARTITION BY department_id
) AS highest_salary
FROM employees
)
SELECT employee_name,
department_id,
employee_salary
FROM highest_salary_paid
WHERE employee_salary = highest_salary
ORDER BY department_id ASC, employee_salary DESC;