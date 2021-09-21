-- create table
CREATE TABLE person (
	person_id SERIAL PRIMARY KEY,
	name VARCHAR(50),
	age NUMERIC,
 height NUMERIC,
  city VARCHAR(50),
  favorite_color VARCHAR(25)
);

-- insert people into person table
INSERT INTO person(name, age, height, city, favorite_color)
VALUES ('Bob', 18, 182, 'Cleveland', 'Blue'),
			 ('Alan', 19, 190, 'Houston', 'Black'),
       ('Ashley', 20, 172, 'Dallas', 'Red'),
      ('Kate', 21, 170, 'Detroit', 'Green'),
       ('Jim', 22, 186, 'Columbus', 'Purple')
;

-- sort by descending
SELECT * FROM person
ORDER BY height DESC;

-- sort by ascending
SELECT * FROM person
ORDER BY height ASC;

-- sort oldest to youngest
SELECT * FROM person
ORDER BY age DESC

-- sort older than 20
SELECT * FROM person
WHERE age > 20;

-- sort if age is 18
SELECT * FROM person
WHERE age = 18;

-- sort age less than 20, older than 30
SELECT * FROM person
WHERE age < 20 OR age > 30;

-- sort people not age 27
SELECT * FROM person
WHERE age != 27;

-- sort people whose fav color is not red
SELECT * FROM person
WHERE favorite_color != 'Red';

-- sort people whose fav color is not red and is not blue
SELECT * FROM person
WHERE favorite_color != 'Red' AND favorite_color != 'Blue';

-- sort people whose fav color is orange or green
SELECT * FROM person
WHERE favorite_color = 'Green' OR favorite_color = 'Orange';

-- sort people whose favorite color is orange, green, or blue
SELECT * FROM person
WHERE favorite_color IN ('Orange', 'Green', 'Blue');

-- sort people whose favorite color is yellow or purple
SELECT * FROM person
WHERE favorite_color IN ('Yellow', 'Purple');
