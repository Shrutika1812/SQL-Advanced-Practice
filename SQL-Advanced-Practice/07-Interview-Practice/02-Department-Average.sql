-- INTERVIEW QUESTION
-- Find departments whose average salary is greater than the overall average salary.

SELECT
    department_id,
    AVG(salary) AS average_salary
FROM employees
GROUP BY department_id
HAVING AVG(salary) > (
    SELECT AVG(salary)
    FROM employees
);
