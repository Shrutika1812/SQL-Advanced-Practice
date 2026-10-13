-- VIEWS

-- Create a view containing employee and department information.

CREATE VIEW employee_department_view AS
SELECT
    e.employee_id,
    e.employee_name,
    e.salary,
    d.department_name
FROM employees e
INNER JOIN departments d
    ON e.department_id = d.department_id;

-- Query the view.
SELECT *
FROM employee_department_view;

-- Drop the view when it is no longer needed.
-- DROP VIEW employee_department_view;
