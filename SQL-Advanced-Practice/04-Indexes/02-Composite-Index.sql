-- COMPOSITE INDEX

-- Composite index on department and salary.
CREATE INDEX idx_department_salary
ON employees(department_id, salary);

-- The column order in a composite index matters.
