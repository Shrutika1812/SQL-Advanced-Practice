-- INDEXES

-- Create an index on employee email.
CREATE INDEX idx_employee_email
ON employees(email);

-- Create an index on department_id.
CREATE INDEX idx_employee_department
ON employees(department_id);

-- View indexes on the employees table.
SHOW INDEX FROM employees;
