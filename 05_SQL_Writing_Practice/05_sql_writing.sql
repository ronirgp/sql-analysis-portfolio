-- ===========================================
-- SQL Writing Exercise 5
-- Question:
-- Write a query that shows every department
-- and the total salary paid in each department.
-- ===========================================

-- My Solution


SELECT department, sum(salary) AS total_salary
 FROM employees
 group by department
            