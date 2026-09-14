-- Business request:
-- Create a report showing how many employees joined each department during 2024.

-- Only show departments with at least 2 employees hired in 2024.

-- Sort from the department with the most 2024 hires to the fewest.
-- My solution
SELECT department_id,
COUNT(*) AS total_employees
FROM employees
WHERE joining_date BETWEEN '2024-01-01' AND '2024-12-31'
GROUP BY department_id
HAVING COUNT(*) >= 2
ORDER BY total_employees  DESC;