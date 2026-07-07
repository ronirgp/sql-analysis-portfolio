-- ===========================================
-- SQL Writing Exercise 22
-- Question:
-- Write a query that shows every department,
-- the lowest salary,
-- the highest salary,
-- and the total number of employees.
--
-- Only include employees whose salary
-- is greater than or equal to 1300.
-- Sort by highest salary (highest to lowest),
-- then by lowest salary (highest to lowest),
-- then by department name (A-Z).
-- ===========================================
-- My Solution
SELECT department, 
       MIN(salary) AS lowest_salary,
       MAX(salary) AS highest_salary,
       COUNT(*) AS total_employees
FROM employees
WHERE salary >= 1300
GROUP BY department
ORDER BY highest_salary DESC, lowest_salary DESC, department ASC;