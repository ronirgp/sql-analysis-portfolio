-- ===========================================
-- SQL Writing Exercise 15
-- Question:
-- Write a query that shows every department,
-- the total number of employees,
-- the highest salary,
-- and the lowest salary.
--
-- Only include employees whose salary
-- is greater than or equal to 1300.
--
-- Sort by department name (A-Z),
-- then by highest salary (highest to lowest).
-- ===========================================
-- My Solution
SELECT department,
       COUNT(*) AS total_employees,
       MAX(salary) AS highest_salary,
       MIN(salary) AS lowest_salary
FROM employees
WHERE salary >=1300
GROUP BY department
ORDER BY department ASC, highest_salary DESC;

