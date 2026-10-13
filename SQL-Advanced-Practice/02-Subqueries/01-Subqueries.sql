-- SUBQUERIES

-- Employees earning more than the average salary.

SELECT
    employee_id,
    employee_name,
    salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);

-- Employee(s) with the highest salary.

SELECT
    employee_id,
    employee_name,
    salary
FROM employees
WHERE salary = (
    SELECT MAX(salary)
    FROM employees
);
