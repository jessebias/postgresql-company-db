-- Add new column
ALTER TABLE Employees
ADD COLUMN hire_date DATE;

-- Update existing records so the column isn't empty
UPDATE Employees SET hire_date = '2023-01-01' WHERE hire_date IS NULL;