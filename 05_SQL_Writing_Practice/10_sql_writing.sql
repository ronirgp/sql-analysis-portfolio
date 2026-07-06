-- ===========================================
-- SQL Writing Exercise 10
-- Question:
-- Write a query that shows every department,
-- the total number of employees,
-- the average salary,
-- and sort the results by average salary
-- from highest to lowest.
-- ===========================================

-- My Solution
SELECT department, 
       COUNT(*) AS total_employees,
       AVG(salary) AS average_salary
       FROM employees
       group by department
       
       ORDER BY average_salary DESC;

       
       