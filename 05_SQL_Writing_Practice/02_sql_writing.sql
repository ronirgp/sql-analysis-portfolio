-- ===========================================
-- SQL Writing Exercise 2
-- Question:
-- Write a query that shows every department
-- and the average salary for each department.
-- ===========================================

-- My Solution

SELECT department, AVG(salary)
from employees
group by department;
