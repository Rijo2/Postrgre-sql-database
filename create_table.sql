

-- CREATE TABLES ========================================

-- Create employees table
CREATE TABLE employees (
	employee_id INT PRIMARY KEY,
	first_name VARCHAR (20),
	second_name VARCHAR(20),
	email VARCHAR(50),
	hire_date DATE,
	gender VARCHAR(1),
	salary INT, -- male/ female ("M"/"F")
	coffeeshop_id INT
	
);
-- Create stores table

CREATE TABLE Food_store (
	shop_id INT PRIMARY KEY,
	shop_name VARCHAR(50),
	city_id INT
);

