-- ===========================================
-- SQL Writing Exercise 6
-- Question:
-- Write a query that shows every department
-- and the number of employees in each department.
-- ===========================================

-- My Solution
SELECT department,count(*) AS total_employees
from employees
group by department