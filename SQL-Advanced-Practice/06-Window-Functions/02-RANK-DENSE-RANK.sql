-- RANK() and DENSE_RANK()

SELECT
    employee_id,
    employee_name,
    salary,
    RANK() OVER (ORDER BY salary DESC) AS employee_rank,
    DENSE_RANK() OVER (ORDER BY salary DESC) AS dense_rank
FROM employees;
