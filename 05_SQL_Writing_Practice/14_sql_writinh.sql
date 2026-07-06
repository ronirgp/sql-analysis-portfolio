-- ===========================================
-- SQL Writing Exercise 14
-- Question:
-- Write a query that shows every department,
-- the highest salary,
-- and the total number of employees.
-- Only include employees whose salary
-- is greater than or equal to 1200.
-- Sort by highest salary (highest to lowest),
-- then by total number of employees
-- (highest to lowest).
-- ===========================================
-- My Solution
SELECT department, 
       MAX(salary) AS highest_salary,
       COUNT(*) AS total_employees
FROM employees
WHERE salary >= 1200
GROUP BY department
ORDER BY highest_salary DESC, total_employees DESC;
       