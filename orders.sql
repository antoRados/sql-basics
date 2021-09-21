-- Create orders table
CREATE TABLE orders (
	order_id SERIAL PRIMARY KEY,
  person_id VARCHAR(100),
  product_name VARCHAR(100),
  product_price NUMERIC,
  quantity NUMERIC
);

-- Add people to orders 
INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES ('Jim', 'Socks', 10.99, 3),
	   ('Bob', 'Socks', 10.99, 1),
       ('Frank', 'Socks', 10.99, 2)
;

-- select all items from orders table
SELECT * FROM orders;

-- find total order quantity
SELECT sum(quantity) FROM orders;

-- find total order price
SELECT SUM(quantity * product_price) FROM orders;

-- find total order person by single person_id
SELECT SUM(quantity * product_price) FROM orders
WHERE person_id = 'Jim';

