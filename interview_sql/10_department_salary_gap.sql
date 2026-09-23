-- Find departments with at least 3 employees where the salary gap between the highest and lowest employee is greater than $1,200.

-- Return:
-- department ID
-- employee count
-- highest salary
-- lowest salary
-- salary gap

-- Sort by salary gap, largest to smallest.

-- My solution
SELECT department_id,
       COUNT(*) AS total_employees,
       MAX(salary) AS highest_salary,
       MIN(salary) AS lowest_salary,
       MAX(salary) - MIN(salary) AS salary_gap
FROM employees
GROUP BY department_id
HAVING COUNT(*) >= 3
AND  MAX(salary) - MIN(salary) > 1200
ORDER BY salary_gap DESC;