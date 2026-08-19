-- =================================== --
-- Management wants to identify departments that --
-- appear to have strong overall salary performance.
-- For each department, return:
-- department_id
-- number of employees
-- average salary
-- highest salary
-- lowest salary
-- salary gap between the highest and lowest employee
-- Only return departments that:
-- have at least 3 employees
-- have an average salary above 1600
-- have a salary gap of at least 1000
-- Sort the results by:
-- 1. salary gap descending
-- 2. average salary descending
-- 3. department_id ascending
-- MY solution
SELECT department_id,
COUNT(*) AS total_employees,
AVG(salary) AS average_salary,
MAX(salary) AS highest_salary,
MIN(salary) AS lowest_salary,
MAX(salary) - MIN(salary) AS salary_gap
FROM employees
GROUP BY department_id
HAVING COUNT(*) >= 3
AND AVG(salary) > 1600
AND MAX(salary) - MIN(salary) >= 1000
ORDER BY salary_gap DESC, average_salary DESC, department_id ASC;


