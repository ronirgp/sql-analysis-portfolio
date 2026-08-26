-- Business Request
-- Management wants to see each employee's salary and the salary of the employee immediately below
 -- them when employees are ordered by salary from highest to lowest.

-- Return:

-- employee name
-- salary
-- next lower salary

-- Order by salary descending.
-- MY solution --

SELECT name AS employee_name,
       salary AS employee_salary,
       LEAD(salary) OVER(
           ORDER BY salary DESC
       ) AS next_lower_salary
FROM employees
ORDER BY employee_salary DESC;