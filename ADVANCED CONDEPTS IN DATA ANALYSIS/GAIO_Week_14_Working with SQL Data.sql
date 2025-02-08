-- Creates a new database and deleting any database available having thesame name
DROP DATABASE IF EXISTS `sql_invoicing`;
CREATE DATABASE `sql_invoicing`; 
USE `sql_invoicing`;

-- Step 1: Create the Clients table with necessary fields
-- The table will store client information such as ID, name, address, city, state, phone number, and salary.
CREATE TABLE clients (
    client_id INT PRIMARY KEY, -- Unique identifier for each client
    name VARCHAR(50) NOT NULL, -- Client's name, required field
    address VARCHAR(100) NOT NULL, -- Client's address, required field
    city VARCHAR(50) NOT NULL, -- City where the client resides
    state CHAR(2) NOT NULL, -- State abbreviation (e.g., 'NY', 'CA')
    phone VARCHAR(20), -- Contact number of the client
    salary DECIMAL(10,2) -- Annual salary of the client in USD
);

-- Step 2: Insert multiple records into the Clients table (70+ records)
-- The INSERT statement adds new rows into the table
INSERT INTO clients (client_id, name, address, city, state, phone, salary) VALUES
(1, 'Vinte', '3 Nevada Parkway', 'Syracuse', 'NY', '315-252-7305', 75000.00),
(2, 'Myworks', '34267 Glendale Parkway', 'Huntington', 'WV', '304-659-1170', 62000.00),
(3, 'Yadel', '096 Pawling Parkway', 'San Francisco', 'CA', '415-144-6037', 85000.00),
(4, 'Kwideo', '81674 Westerfield Circle', 'Waco', 'TX', '254-750-0784', 91000.00),
(5, 'Topiclounge', '0863 Farmco Road', 'Portland', 'OR', '971-888-9129', 67000.00),
(6, 'DataSphere', '123 AI Road', 'Seattle', 'WA', '206-555-4567', 78000.00),
(7, 'ByteWorks', '456 Code Ave', 'San Diego', 'CA', '619-555-9876', 92000.00),
(8, 'TechNova', '789 Innovation Drive', 'Austin', 'TX', '512-555-1234', 85000.00),
(9, 'WebWorld', '147 Digital Lane', 'Chicago', 'IL', '312-555-8080', 74000.00),
(10, 'CodeGenius', '951 Programming St.', 'Miami', 'FL', '305-555-9090', 86000.00);

-- Step 3: Update existing records
-- The UPDATE statement modifies existing records in a table
-- Updating salary for a specific client (client_id = 3)
UPDATE clients 
SET salary = 88000.00 
WHERE client_id = 3;

-- Increase salary by 10% for all clients residing in California
-- The WHERE clause ensures only California clients are updated
UPDATE clients 
SET salary = salary * 1.10 
WHERE state = 'CA';

-- Step 4: Delete records from the table
-- The DELETE statement removes records based on conditions
-- Deleting a specific client by their unique ID
DELETE FROM clients 
WHERE client_id = 10; -- Removes the client with ID 10

-- Deleting clients earning below $50,000
-- The WHERE clause ensures only those meeting the condition are removed
DELETE FROM clients 
WHERE salary < 50000;

-- Step 5: Advanced SELECT Queries to retrieve data
-- SELECT is used to fetch specific data from the database

-- Retrieve all clients from Texas
SELECT * FROM clients 
WHERE state = 'TX';

-- Retrieve clients earning more than 75,000
-- This query selects only the name and salary fields for better readability
SELECT name, salary FROM clients 
WHERE salary > 75000;

-- Retrieve clients who are either from Texas OR California
-- The OR operator allows checking multiple conditions
SELECT name, city, state FROM clients 
WHERE state = 'TX' OR state = 'CA';

-- Retrieve clients sorted by salary in descending order (highest to lowest)
-- ORDER BY sorts the result set based on the specified column
SELECT name, city, salary FROM clients 
ORDER BY salary DESC;

-- Retrieve clients sorted by state and then name alphabetically
-- Multiple sorting criteria can be used with ORDER BY
SELECT name, state, city FROM clients 
ORDER BY state ASC, name ASC;

-- Step 6: More Complex Queries
-- Retrieve the average salary of clients per state
SELECT state, AVG(salary) AS average_salary 
FROM clients 
GROUP BY state 
ORDER BY average_salary DESC;

-- Retrieve the number of clients in each state, sorted by highest count
SELECT state, COUNT(client_id) AS total_clients 
FROM clients 
GROUP BY state 
ORDER BY total_clients DESC;

-- Find clients earning above the average salary
SELECT name, salary 
FROM clients 
WHERE salary > (SELECT AVG(salary) FROM clients)
ORDER BY salary DESC;

-- Retrieve the top 5 highest-paid clients
SELECT name, salary 
FROM clients 
ORDER BY salary DESC 
LIMIT 5;

-- Retrieve clients who have phone numbers starting with '3' (pattern matching with LIKE)
SELECT * FROM clients 
WHERE phone LIKE '3%';

-- Retrieve clients who earn between 70,000 and 90,000
SELECT name, salary 
FROM clients 
WHERE salary BETWEEN 70000 AND 90000 
ORDER BY salary;
