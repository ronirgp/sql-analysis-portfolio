-- Business Request

-- Management wants a report showing each department's highest salary, lowest salary
  -- and the difference between them.
-- Return:
-- department ID
-- highest salary
-- lowest salary
-- salary gap

-- Only include departments where the salary gap is greater than $1,000.
-- Sort by salary gap descending.
-- MY solution

SELECT department_id,
MAX(salary) AS highest_salary,
MIN(salary) AS lowest_salary,
MAX(salary) - MIN(salary) AS salary_gap
FROM employees
GROUP BY department_id
HAVING  salary_gap > 1000
ORDER BY salary_gap DESC;