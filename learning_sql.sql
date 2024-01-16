-- Select all columns from the employees table
SELECT * FROM employees;

-- Select the first_name, last_name, and department columns from the employees table
SELECT first_name, last_name, department FROM employees;

-- select the distinct or unique departments from the employees table
SELECT DISTINCT department FROM employees;

-- count the number of employees in the employees table
SELECT COUNT(*) FROM employees;

-- count the number of unique departments in the employees table
SELECT COUNT(DISTINCT department) FROM employees;



