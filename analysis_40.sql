SELECT department, COUNT(*) AS total_employees
FROM employees
WHERE salary >= 1300
GROUP BY department
ORDER BY total_employees DESC;
