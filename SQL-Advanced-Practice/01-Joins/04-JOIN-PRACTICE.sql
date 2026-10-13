-- JOIN PRACTICE

-- 1. Display employee name, department name and salary.
-- 2. Find employees working in the IT department.
-- 3. Find departments having no employees.
-- 4. Display each employee and their manager.
-- 5. Find employees earning more than 60000 along with their department.

SELECT
    e.employee_name,
    d.department_name,
    e.salary
FROM employees e
INNER JOIN departments d
    ON e.department_id = d.department_id
WHERE e.salary > 60000;
