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



