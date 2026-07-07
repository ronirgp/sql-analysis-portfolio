-- ===========================================
-- SQL Writing Exercise 17
-- Question:
-- Write a query that shows every department,
-- the highest salary,
-- the average salary,
-- and the total number of employees.
-- Only include employees whose salary
-- is greater than or equal to 1500.
-- Sort by average salary (highest to lowest),
-- then by highest salary (highest to lowest).
-- ===========================================
-- My Solution
SELECT department,
       MAX(salary) AS highest_salary,
       AVG(salary) AS average_salary,
       COUNT(*) AS total_employees
FROM employees
WHERE salary >= 1500
GROUP BY department
ORDER BY average_salary DESC, highest_salary DESC;