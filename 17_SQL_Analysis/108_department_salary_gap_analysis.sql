-- “Show departments where the highest salary is at least $800 higher than the lowest salary. 
-- Return the department ID, highest salary, lowest salary, and the salary gap. Sort by 
-- salary gap from largest to smallest.”
-- My solution 
SELECT department_id,
	MAX(salary) AS highest_salary,
    MIN(salary) AS lowest_salary,
    MAX(salary) -  MIN(salary) AS 
    salary_gap
    FROM employees
    GROUP BY department_id
    HAVING MAX(salary) - MIN(salary) >= 800
    ORDER BY salary_gap DESC;