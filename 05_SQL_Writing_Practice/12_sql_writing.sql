-- ===========================================
-- SQL Writing Exercise 12
-- Question:
-- Write a query that shows every department,
-- the highest salary and the lowest salary.
--
-- Only include employees whose salary
-- is greater than 1200.
--
-- Sort the results by highest salary
-- from highest to lowest.
-- ===========================================
-- My Solution
SELECT department,
       MAX(salary) AS highest_salary,
       MIN(salary) AS lowest_salary
FROM employees
WHERE salary >= 1200
GROUP BY department
ORDER by highest_salary DESC;

       