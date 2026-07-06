-- ===========================================
-- SQL Writing Exercise 9
-- Question:
-- Write a query that shows every department,
-- the number of employees,
-- the highest salary,
-- the lowest salary,
-- the average salary,
-- and the total salary.
-- ===========================================
-- My Solution
SELECT department, 
       COUNT(*) AS total_employees,
       Max(salary) AS highest_salary,
       min(salary) AS lowest_salary,
       avg(salary) AS average_salary,
       sum(salary) AS total_salary
from employees
group by department;
       