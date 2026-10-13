-- INTERVIEW QUESTION
-- Find the highest-paid employee in each department.

WITH ranked_employees AS (
    SELECT
        employee_id,
        employee_name,
        department_id,
        salary,
        RANK() OVER (
            PARTITION BY department_id
            ORDER BY salary DESC
        ) AS salary_rank
    FROM employees
)
SELECT
    employee_id,
    employee_name,
    department_id,
    salary
FROM ranked_employees
WHERE salary_rank = 1;
