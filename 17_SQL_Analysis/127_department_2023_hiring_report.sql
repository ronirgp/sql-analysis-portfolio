-- Business request:
-- Management wants to see how many employees joined the company in each department during 2023.

-- Show:
-- department ID
-- number of employees who joined during 2023
-- Only show departments with at least 2 employees hired in 2023.
-- Sort by number of 2023 hires from highest to lowest.
-- My solution

SELECT department_id,
       COUNT(*) AS total_employees
FROM employees
WHERE joining_date BETWEEN '2023-01-01' AND '2023-12-31'
GROUP BY department_id
HAVING COUNT(*) >= 2
ORDER BY total_employees DESC;
