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

-- select all employees whose last name is "Smith"
SELECT * FROM employees WHERE last_name = 'Smith';

-- select all employees whose last name is "Smith" or "Doe"
SELECT * FROM employees WHERE last_name = 'Smith' OR last_name = 'Doe';

-- select all employees whose last name is "Smith" and first name is "John"
SELECT * FROM employees WHERE last_name = 'Smith' AND first_name = 'John';

-- select all employees whose last name is "Smith" and first name is "John" or "Jane"
SELECT * FROM employees WHERE last_name = 'Smith' AND (first_name = 'John' OR first_name = 'Jane');

-- select all employees whose last name is "Smith" and first name is not "John"
SELECT * FROM employees WHERE last_name = 'Smith' AND NOT first_name = 'John';

-- select all the employees whose salary is greater than 100000 and first name start with either "A" or "J"
SELECT * FROM employees WHERE salary > 100000 AND (first_name LIKE 'A%' OR first_name LIKE 'J%');

-- ORDER BY is used to sort the results of a query in ascending or descending order
-- for string values, the order is alphabetical
-- select all employees and order the results by salary in descending order
SELECT * FROM employees ORDER BY salary DESC;

-- ORDER BY several columns
-- select all employees and order the results by department and salary in descending order
SELECT * FROM employees ORDER BY department, salary DESC;

-- ORDER BY the column in ASC and DESC order
-- select all employees and order the results by department in ascending order and salary in descending order
SELECT * FROM employees ORDER BY department ASC, salary DESC;

-- LIMIT is used to limit the number of rows returned by a query
-- select the first 10 employees from the employees table
SELECT * FROM employees LIMIT 10;

-- Null is a special value in SQL that represents missing or unknown data
-- select all employees whose department is unknown
SELECT * FROM employees WHERE department IS NULL;

-- Insert a new employee into the employees table
INSERT INTO employees (first_name, last_name, department, salary) VALUES ('John', 'Smith', 'Sales', 50000);

-- Insert multiple employees into the employees table
INSERT INTO employees (first_name, last_name, department, salary) VALUES ('John', 'Smith', 'Sales', 50000), ('Jane', 'Doe', 'Marketing', 60000);

-- Update the salary of all employees whose department is "Sales"
UPDATE employees SET salary = 60000 WHERE department = 'Sales';

-- Update multiple columns of all employees whose department is "Sales"
UPDATE employees SET salary = 60000, department = 'Marketing' WHERE department = 'Sales';

-- Delete all employees whose department is "Sales"
DELETE FROM employees WHERE department = 'Sales';

-- Delete all employees
DELETE FROM employees;

-- Drop the employees table
DROP TABLE employees;

-- Create a new table called "users" with the following columns: id, username, password
CREATE TABLE users (id INTEGER PRIMARY KEY, username TEXT, password TEXT);

-- Insert a new user into the users table
INSERT INTO users (username, password) VALUES ('johnsmith', 'password');

-- MIN() and MAX() are aggregate functions that return the minimum and maximum values in a column
-- select the minimum salary from the employees table
SELECT MIN(salary) FROM employees;
SELECT MAX(salary) FROM employees;

-- Use an Alias to rename the column
-- select the minimum salary from the employees table and rename the column to "min_salary"
SELECT MIN(salary) AS min_salary FROM employees;

-- AVG() is an aggregate function that returns the average value in a column
-- select the average salary from the employees table
SELECT AVG(salary) FROM employees;

-- SUM() is an aggregate function that returns the sum of all values in a column
-- select the sum of all salaries from the employees table
SELECT SUM(salary) FROM employees;

-- GROUP BY is a clause used with aggregate functions to combine data from one or more columns
-- select the department and the average salary of all employees in each department
SELECT department, AVG(salary) FROM employees GROUP BY department;