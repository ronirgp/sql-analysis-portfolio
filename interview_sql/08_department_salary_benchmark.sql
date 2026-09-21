-- Management wants to identify departments where:

-- there are at least 3 employees
-- the average salary is at least $1,600
-- the difference between the highest salary and average salary is at least $700

-- Return:
-- department ID
-- employee count
-- average salary
-- highest salary
-- salary difference above average
-- Sort by the salary difference largest to smallest.
-- My solution
SELECT department_id,
       COUNT(*) AS total_employees,
       AVG(salary) AS average_salary,
       MAX(salary) AS highest_salary,
       MAX(salary) - AVG(salary) AS salary_difference
FROM employees
GROUP BY department_id
HAVING COUNT(*) >= 3
   AND AVG(salary) >= 1600
   AND MAX(salary) - AVG(salary) >= 700
ORDER BY salary_difference DESC;