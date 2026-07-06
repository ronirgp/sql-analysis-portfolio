-- ===========================================
-- SQL Writing Exercise 3
-- Question:
-- Write a query that shows every department
-- and the highest salary in each department.
-- ===========================================

-- My Solution


SELECT department, 
       MAX(salary) AS highest_salary
FROM employees
group by department;