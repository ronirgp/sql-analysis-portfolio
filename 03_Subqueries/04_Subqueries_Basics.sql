-- ===========================================
-- SQL Subquery Exercise 104
-- Business Request:
-- The HR Director wants to verify
-- the total number of employees
-- in the company.
-- Write a subquery that returns
-- the total employee count.
-- Then display that result.
-- (This exercise is to understand
-- that subqueries can return
-- COUNT values too.)
-- ===========================================
-- My Solution
SELECT
(
    SELECT COUNT(*)
    FROM employees
) AS total_employees;


