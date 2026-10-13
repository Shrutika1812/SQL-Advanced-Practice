-- COMMON TABLE EXPRESSION (CTE)

-- Calculate average salary by department and display departments
-- whose average salary is greater than 60000.

WITH department_salary AS (
    SELECT
        department_id,
        AVG(salary) AS average_salary
    FROM employees
    GROUP BY department_id
)
SELECT
    department_id,
    average_salary
FROM department_salary
WHERE average_salary > 60000;
