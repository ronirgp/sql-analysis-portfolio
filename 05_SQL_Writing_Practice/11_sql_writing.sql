-- ===========================================
-- SQL Writing Exercise 11
-- Question:
-- Write a query that shows every department,
-- the total number of employees,
-- and the average salary.
--
-- Only include employees whose salary is
-- 1500 or higher.
-- Sort the results by department name (A-Z).
-- ===========================================
-- My Solution
SELECT department, 
       COUNT(*) AS total_employees,
       AVG(salary) AS average_salary
FROM employees
WHERE salary >=1500 
GROUP BY department
ORDER BY department;
