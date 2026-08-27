-- Business Request
-- Management wants to see every employee's salary rank within their department.
-- Rules:

-- Highest salary = rank 1
-- Employees with equal salaries receive the same rank
-- Show all employees

-- Return:
-- Employee name
-- Department ID
-- Salary
-- Salary rank

-- Order by department ID ASC, salary rank ASC.
-- My solution 
WITH employees_rank_salary AS
(
SELECT name AS employee_name,
department_id,
salary AS employee_salary,
RANK() OVER(PARTITION BY department_id ORDER BY salary DESC
) AS  salary_rank
FROM employees
)
SELECT employee_name,
department_id,
employee_salary,
salary_rank
FROM employees_rank_salary 
ORDER BY department_id ASC, salary_rank ASC;