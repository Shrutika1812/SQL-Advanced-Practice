-- INNER JOIN
-- Get employees along with their department names.

SELECT
    e.employee_id,
    e.employee_name,
    d.department_name
FROM employees e
INNER JOIN departments d
    ON e.department_id = d.department_id;

-- Get employees whose department is located in Pune.

SELECT
    e.employee_name,
    d.department_name,
    d.location
FROM employees e
INNER JOIN departments d
    ON e.department_id = d.department_id
WHERE d.location = 'Pune';
