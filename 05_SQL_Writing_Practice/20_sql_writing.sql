-- ===========================================
-- SQL Writing Exercise 20
-- Question:
-- Write a query that shows every department,
-- the lowest salary,
-- the highest salary,
-- the average salary,
-- the total salary,
-- and the total number of employees.
-- Only include employees whose salary
-- is greater than or equal to 1400.
-- Sort by highest salary (highest to lowest),
-- then by average salary (highest to lowest),
-- then by department name (A-Z).
-- ===========================================
-- My Solution
SELECT department, 
       MIN(salary) AS lowest_salary,
       MAX(salary) AS highest_salary,
       AVG(salary)  AS average_salary,
       SUM(salary) AS total_salary,
       COUNT(*) AS total_employees
FROM employees
WHERE salary >= 1400
GROUP BY department
ORDER BY highest_salary DESC, average_salary DESC, department ASC;


