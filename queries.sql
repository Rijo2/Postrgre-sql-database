-- SELECT statement

-- select all (*) columns from table
SELECT * FROM employees;
SELECT * FROM food_store;
SELECT * FROM locations;
SELECT * FROM suppliers;

-- select some (3) columns of table
SELECT
	employee_id,
	first_name,
	second_name
FROM employees;

--=======================================================

-- IN, NOT IN, IS NULL, BETWEEN

-- Select all rows from the suppliers table where the supplier is Beans and Barley
SELECT *
FROM suppliers
WHERE supplier_name = 'Beans and Barley';

-- Select all rows from the suppliers table where the supplier is NOT Beans and Barley
SELECT *
FROM suppliers
WHERE NOT supplier_name = 'Beans and Barley';

SELECT *
FROM suppliers
WHERE supplier_name <> 'Beans and Barley';



-- Select all employees with missing email addresses
SELECT *
FROM employees
WHERE email IS NULL;

-- Select all employees whose emails are not missing
SELECT *
FROM employees
WHERE NOT email IS NULL;

-- Select all employees who make between 35k and 50k
SELECT
	employee_id,
	first_name,
	second_name,
	salary
FROM employees
WHERE salary BETWEEN 35000 AND 50000;

SELECT
	employee_id,
	first_name,
	second_name,
	salary
FROM employees
WHERE
	salary >= 35000
	AND salary <= 50000;

--===========================================================

-- ORDER BY, LIMIT, DISTINCT, Renaming columns

-- Order by salary ascending 
SELECT
	employee_id,
	first_name,
	second_name,
	salary
FROM employees
ORDER BY salary;

-- Order by salary descending 
SELECT
	employee_id,
	first_name,
	second_name,
	salary
FROM employees
ORDER BY salary DESC;

-- Top 10 highest paid employees
SELECT
	employee_id,
	first_name,
	second_name,
	salary
FROM employees
ORDER BY salary DESC
LIMIT 10;

-- Return all unique coffeeshop ids
SELECT DISTINCT shop_id
FROM employees;

-- Return all unique countries
SELECT DISTINCT country
FROM locations;

-- Renaming columns
SELECT
	email,
	email AS email_address, 
	hire_date,
  hire_date AS date_joined,
	salary,
  salary AS pay
FROM employees;

-- EXTRACT

SELECT
	hire_date as date,
	EXTRACT(YEAR FROM hire_date) AS year,
	EXTRACT(MONTH FROM hire_date) AS month,
	EXTRACT(DAY FROM hire_date) AS day
FROM employees;
