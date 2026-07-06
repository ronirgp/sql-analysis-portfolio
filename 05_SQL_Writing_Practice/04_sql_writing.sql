-- ===========================================
-- SQL Writing Exercise 4
-- Question:
-- Write a query that shows every department
-- and the lowest salary in each department.
-- ===========================================

-- My Solution

SELECT department, min(salary) 
AS lowest_salary
FROM employees
group by department;
