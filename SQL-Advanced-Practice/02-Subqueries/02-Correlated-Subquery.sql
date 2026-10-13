-- CORRELATED SUBQUERY
-- Find employees earning more than the average salary of their department.

SELECT
    e.employee_id,
    e.employee_name,
    e.department_id,
    e.salary
FROM employees e
WHERE e.salary > (
    SELECT AVG(e2.salary)
    FROM employees e2
    WHERE e2.department_id = e.department_id
);
