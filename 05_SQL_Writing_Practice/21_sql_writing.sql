-- ===========================================
-- SQL Writing Exercise 21
-- Question:
-- Write a query that shows every department,
-- the total number of employees,
-- the average salary,
-- and the highest salary.
-- Only include employees whose salary
-- is greater than or equal to 1200.
-- Sort by average salary (highest to lowest),
-- then by total number of employees
-- (highest to lowest),
-- then by department name (A-Z).
-- ===========================================
-- My Solution
SELECT department, 
       COUNT(*) AS total_employees,
       AVG(salary) AS average_salary,
       MAX(salary) AS highest_salary
FROM employees
WHERE  salary >= 1200
GROUP BY department
ORDER BY average_salary DESC, total_employees DESC, department ASC;