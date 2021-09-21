-- Add new artist to table
INSERT INTO artist (name)
VALUES ('name'), ('name2'), ('name3');

-- Select 10 artists in reverse alphabetical order
SELECT * FROM artist 
ORDER BY name DESC LIMIT 10;

-- Select 5 artists in alphabetical order
SELECT * FROM artist
ORDER BY name ASC LIMIT 5;

-- Select artists starting with "Black"
SELECT * FROM artist
WHERE name LIKE 'Black%'

-- Select artists that contain the word "Black"
SELECT * FROM artist
WHERE name LIKE '%Black'