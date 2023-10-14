

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
	shop_id INT
	
);
-- Create store table

CREATE TABLE food_store (
	shop_id INT PRIMARY KEY,
	shop_name VARCHAR(50),
	city_id INT
);

-- Add foreign key to the employees table
ALTER TABLE employees
ADD FOREIGN KEY (shop_id)
REFERENCES food_store (shop_id)
ON DELETE SET NULL;

-- Create locations table
CREATE TABLE locations (
    city_id INT PRIMARY KEY,
    city VARCHAR(50),
    country VARCHAR(50)   
);

-- Add foreign key to shops table
ALTER TABLE food_store
ADD FOREIGN KEY (city_id)
REFERENCES locations(city_id)
ON DELETE SET NULL;

-- Create suppliers table
CREATE TABLE suppliers (
    shop_id INT,
    supplier_name VARCHAR(40),
    food_type VARCHAR(20),
    PRIMARY KEY (shop_id, supplier_name),
    FOREIGN KEY (shop_id) REFERENCES food_store(shop_id)
    ON DELETE CASCADE
);

-- INSERT INTO TABLES ====================================

-- Insert first two entries into employees table
-- Set the shop_id to NULL for now as we have not inserted the shop values into the shops table yet
INSERT INTO employees VALUES (501559, 'Carson', 'Mosconi', 'cmosconi0@census.gov', '2015/08/29', 'M', 32973, NULL);
INSERT INTO employees VALUES (144108, 'Khalil', 'Corr', 'kcorr1@github.io', '2014/04/23', 'M', 52802, NULL);

-- Insert the shop with coffeeshop_id = 1 into the shops table
-- Set to city_id to NULL for now as we have not inserted the city values into the locations table yet
INSERT INTO food_store VALUES(1, 'Common Grounds', NULL);

-- Insert Los Angeles into the locations table
INSERT INTO locations VALUES(1, 'Los Angeles', 'United States');

-- Now you can update the city_id in the shops table for coffeeshop_id = 1 to 1
UPDATE food_store
SET city_id = 1
WHERE shop_id = 1;

-- Insert the first two values where coffeeshop_id = 1 into the suppliers table
INSERT INTO suppliers VALUES(1, 'Beans and Barley', 'Arabica');
INSERT INTO suppliers VALUES(1, 'Cool Beans', 'Robusta');

-- Insert into the locations table
INSERT INTO locations VALUES(2, 'New York', 'United States');
INSERT INTO locations VALUES(3, 'London', 'United Kingdom');

-- Insert into the shops table
INSERT INTO food_store VALUES(2, 'Early Rise', 2);
INSERT INTO food_store VALUES(3, 'Ancient Bean', 3);
INSERT INTO food_store VALUES(4, 'Urban Grind', 1);
INSERT INTO food_store VALUES(5, 'Trembling Cup', 2);

-- Insert into the suppliers table
INSERT INTO suppliers VALUES(2, 'Vanilla Bean', 'Liberica');
INSERT INTO suppliers VALUES(2, 'Beans and Barley', 'Arabica');
INSERT INTO suppliers VALUES(2, 'Cool Beans', 'Robusta');
INSERT INTO suppliers VALUES(3, 'Bean Me Up', 'Excelsa');
INSERT INTO suppliers VALUES(3, 'Vanilla Bean', 'Liberica');
INSERT INTO suppliers VALUES(3, 'Cool Beans', 'Robusta');
INSERT INTO suppliers VALUES(3, 'Beans and Barley', 'Arabica');
INSERT INTO suppliers VALUES(4, 'Vanilla Bean', 'Liberica');
INSERT INTO suppliers VALUES(4, 'Bean Me Up', 'Excelsa');
INSERT INTO suppliers VALUES(5, 'Beans and Barley', 'Arabica');
INSERT INTO suppliers VALUES(5, 'Vanilla Bean', 'Liberica');
INSERT INTO suppliers VALUES(5, 'Bean Me Up', 'Excelsa');

-- inserting  all the remaining values into the employees table

INSERT INTO employees VALUES (782284, 'Vilhelmina', 'Rayman', 'vrayman2@jigsy.com', '2015/08/17', 'F', 57855, 2);
INSERT INTO employees VALUES (225709, 'Eleen', 'Tarpey', 'etarpey3@devhub.com', '2016/09/14', 'F', 48048, 3);
INSERT INTO employees VALUES (614903, 'Hamel', 'Grocock', 'hgrocock4@nasa.gov', '2016/03/27', 'M', 66566, 3);
INSERT INTO employees VALUES (590293, 'Frazier', 'Balls', 'fballs5@nydailynews.com', '2021/12/22', 'M', 15235, 3);
INSERT INTO employees VALUES (243999, 'Jeremy', 'Whitlam', 'jwhitlam6@nydailynews.com', '2014/01/21', 'M', 41159, 4);
INSERT INTO employees VALUES (599230, 'Webb', 'Hevey', 'whevey7@wikia.com', '2010/04/27', 'M', 48477, 4);
INSERT INTO employees VALUES (758331, 'Katharine', 'Sexcey', 'ksexcey8@harvard.edu', '2014/07/03', 'F', 23772, 5);
INSERT INTO employees VALUES (561012, 'Barton', 'Lillow', 'blillow9@cam.ac.uk', '2015/08/17', 'M', 15083, 5);
INSERT INTO employees VALUES (938560, 'Samantha', 'Newall', 'snewalla@comsenz.com', '2013/08/10', 'F', 10223, 2);
INSERT INTO employees VALUES (746871, 'Joshua', 'Winscum', 'jwinscumb@sciencedirect.com', '2022/12/29', 'M', 28232, 2);
INSERT INTO employees VALUES (75097, 'Wally', 'Huebner', 'whuebnerc@dmoz.org', '2020/08/30', 'F', 57731, 4);
INSERT INTO employees VALUES (659627, 'Austen', 'Waterhouse', 'awaterhoused@infoseek.co.jp', '2011/06/25', 'M', 32946, 1);
INSERT INTO employees VALUES (755091, 'Clem', 'Kitchingman', 'ckitchingmane@pinterest.com', '2014/07/23', 'M', 46818, 4);
INSERT INTO employees VALUES (925779, 'Pavel', 'Butchard', 'pbutchardf@opera.com', '2016/09/21', 'M', 35003, 5);
INSERT INTO employees VALUES (510410, 'Tarra', 'Rolin', 'troling@omniture.com', '2019/03/21', 'F', 27191, 4);
INSERT INTO employees VALUES (353657, 'Brigham', 'Boucher', 'bboucherh@army.mil', '2016/03/09', 'M', 38899, 2);
INSERT INTO employees VALUES (877425, 'Horten', 'Byre', NULL, '2022/05/21', 'M', 40458, 5);
INSERT INTO employees VALUES (608868, 'Annabelle', 'Ottiwill', 'aottiwillj@wordpress.com', '2016/07/19', 'F', 54857, 5);
INSERT INTO employees VALUES (593979, 'Rockie', 'Meriot', 'rmeriotk@usda.gov', '2011/07/29', 'M', 45651, 4);
INSERT INTO employees VALUES (649417, 'Terese', 'Monshall', 'tmonshalll@miibeian.gov.cn', '2010/02/09', 'F', 13829, 1);
INSERT INTO employees VALUES (125157, 'Bartolomeo', 'Gossage', 'bgossagem@squarespace.com', '2019/03/31', 'M', 17474, 4);
INSERT INTO employees VALUES (891720, 'Amye', 'Dilger', 'adilgern@amazon.com', '2014/12/29', 'F', 63671, 3);
