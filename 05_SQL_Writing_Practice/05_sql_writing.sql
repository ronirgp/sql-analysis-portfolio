-- ===========================================
-- SQL Writing Exercise 5
-- Question:
-- Write a query that shows every department
-- and the total salary paid in each department.
-- ===========================================

-- My Solution


SELECT department, sum(salary) AS total_pay
 FROM employees
 group by department
            