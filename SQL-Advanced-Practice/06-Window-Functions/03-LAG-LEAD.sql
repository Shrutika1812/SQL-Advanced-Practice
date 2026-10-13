-- LAG() and LEAD()

SELECT
    employee_id,
    employee_name,
    salary,
    LAG(salary) OVER (ORDER BY salary) AS previous_salary,
    LEAD(salary) OVER (ORDER BY salary) AS next_salary
FROM employees;
