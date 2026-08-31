-- Business Request

-- Management wants to identify departments where the lowest-paid employee earns
--  at least $1,200.

-- Return:

-- department_id
-- lowest_salary

-- Order by lowest_salary descending.ing.
-- My solution
SELECT department_id,
MIN(salary) AS lowest_salary
FROM employees
GROUP BY department_id
HAVING MIN(salary) = 1200
ORDER BY lowest_salary DESC;