-- ===========================================
-- SQL Writing Exercise 18
-- Question:
-- Write a query that shows every department,
-- the lowest salary,
-- the total salary,
-- and the average salary.
-- Only include employees whose salary
-- is greater than or equal to 1200.
-- Sort by department name (A-Z),
-- then by average salary (highest to lowest).
-- ===========================================
-- My Solution
SELECT department, 
       MIN(salary) AS lowest_salary,
       SUM(salary) AS total_salary,
       AVG(salary) AS average_salary
FROM employees
WHERE salary >= 1200
GROUP BY department
ORDER BY department ASC, average_salary DESC;