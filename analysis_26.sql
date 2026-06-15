SELECT department, MIN(salary) AS lowest_salary
FROM employees
GROUP BY department
ORDER BY lowest_salary ASC;
