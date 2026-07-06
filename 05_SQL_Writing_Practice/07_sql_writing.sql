-- ===========================================
-- SQL Writing Exercise 7
-- Question:
-- Write a query that shows every department,
-- the average salary, the highest salary,
-- and the lowest salary for each department.
-- ===========================================
-- My Solution
SELECT department, 
AVG(salary) AS average_salary,
MAX(salary) AS highest_salary ,
MIN(salary) AS lowest_salary 
from employees
group by department;