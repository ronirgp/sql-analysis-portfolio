-- ===========================================
-- SQL Writing Exercise 8
-- Question:
-- Write a query that shows every department,
-- the total salary, the average salary,
-- and the number of employees.
-- ===========================================

-- My Solution
SELECT department,
       sum(salary) AS total_salary,
       AVG(salary) AS average_salary,
       COUNT(*) AS total_employees
FROM employees
group by department;

       