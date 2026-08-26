-- Business Request
-- Management wants to see each employee's salary and the salary 
-- of the employee immediately above them when employees are ordered from highest salary to lowest salary.

-- Return:

-- employee name
-- salary
-- previous higher salary

-- Order by salary descending.
-- My solution
SELECT name AS employee_name,
salary AS employee_salary,
LAG(salary) OVER(
ORDER BY salary DESC
) AS next_highest_salary
FROM employees
ORDER BY employee_salary DESC;