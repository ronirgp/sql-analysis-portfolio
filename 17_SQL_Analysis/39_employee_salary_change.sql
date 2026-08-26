-- Business Request

-- Management wants to see each employee's salary and the difference between their salary
-- and the employee immediately above them when employees are ordered from highest salary to lowest salary.

-- Return:

-- employee name
-- salary
-- previous higher salary
-- salary difference

-- For the highest-paid employee, there is no previous employee, so the difference should be NULL.

-- Order by salary descending.
-- My solution
WITH salary_comparison AS
(
    SELECT name AS employee_name,
           salary AS employee_salary,
           LAG(salary) OVER(
               ORDER BY salary DESC
           ) AS previous_higher_salary
    FROM employees
)
SELECT employee_name,
       employee_salary,
       previous_higher_salary,
       employee_salary - previous_higher_salary AS salary_difference
FROM salary_comparison
ORDER BY employee_salary DESC;
