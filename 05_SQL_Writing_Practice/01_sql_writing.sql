SELECT department, COUNT(*) AS total_employees
FROM departments
GROUP BY department;
