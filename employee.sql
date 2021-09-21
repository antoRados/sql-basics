-- Select employees first and last names living in Calgary
SELECT first_name, last_name FROM employee
WHERE city = 'Calgary';

-- Select birthdate of youngest employee
SELECT birth_date FROM employee
ORDER BY birth_date DESC LIMIT 1;

-- Select birthdate of oldest employee
SELECT birth_date FROM employee
ORDER BY birth_date ASC LIMIT 1;

-- Select everyone who reports to Nancy Edwards
SELECT employee_id FROM employee
WHERE first_name = 'Nancy' AND last_name = 'Edwards';

SELECT * FROM employee
WHERE reports_to = 2;

-- Count how many people live in Lethbridge
SELECT COUNT(*) FROM employee
WHERE city = 'Lethbridge';