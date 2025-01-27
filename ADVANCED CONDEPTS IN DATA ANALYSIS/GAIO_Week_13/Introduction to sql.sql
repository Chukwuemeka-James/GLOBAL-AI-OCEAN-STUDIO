-- What Are Databases?
-- A database is an organized collection of data that allows for easy access, management, and updating.
-- Databases are essential for storing and retrieving information efficiently.

-- Types of databases: relational, document-based, key-value stores, etc.
-- Relational Databases
-- A relational database stores data in a structured format using tables.
-- Tables are interconnected through relationships, allowing complex queries and data analysis.

-- Relationships in Relational Databases
-- Relationships define how tables in a database are connected to one another.
-- The main types of relationships are:

-- 1. One-to-One Relationship
-- Each record in Table A is linked to one record in Table B.
-- Example:
-- A "Users" table and a "Profiles" table where each user has one profile.

-- 2. One-to-Many Relationship
-- One record in Table A is linked to multiple records in Table B.
-- Example:
-- A "Customers" table and an "Orders" table where each customer can have multiple orders.

-- 3. Many-to-Many Relationship
-- Many records in Table A are linked to many records in Table B through an intermediate table.
-- Example:
-- A "Students" table and a "Courses" table where students can enroll in multiple courses, and courses can have multiple students.

-- Popular relational databases include:
-- MySQL
-- PostgreSQL
-- Oracle Database
-- Microsoft SQL Server

-- Good table naming manner: Table name should:
-- Be lowercase
-- have no space - Instead use an underscore
-- Refer to collective group or be plural but preferably singular
-- They should no be thesame two field name
-- Fields name should not share thesame name with table.

-- Why Use Relational Databases?
-- Efficiency: Provides quick and structured access to data.
-- Flexibility: Handles different data types and relationships.
-- Consistency: Ensures data integrity through built-in rules and constraints.

-- Introduction to SQL
-- What is SQL?
-- SQL (Structured Query Language) is the standard language used to interact with relational databases.
-- It allows users to perform tasks such as:
-- Querying Data: Retrieving specific information.
-- Inserting Data: Adding new records to the database.
-- Updating Data: Modifying existing records.
-- Deleting Data: Removing records.
-- Managing Structure: Creating, altering, or deleting tables and other database objects.

-- Why is SQL Useful?
-- Universal: Works across most relational database systems.
-- Powerful: Handles complex queries and data manipulations.
-- Accessible: Easy to learn and use for beginners.
-- Efficient: Optimized for handling large datasets.

-- Creates a new database and deleting any database available having thesame name
DROP DATABASE IF EXISTS `sql_invoicing`;
CREATE DATABASE `sql_invoicing`; 
USE `sql_invoicing`;

-- Creates a table in our database
CREATE TABLE `clients` (
  `client_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` char(2) NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `salary` decimal(10,2) NOT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Inserts values into the database
INSERT INTO `clients` VALUES 
(1, 'Vinte', '3 Nevada Parkway', 'Syracuse', 'NY', '315-252-7305', 55000.00),
(2, 'Myworks', '34267 Glendale Parkway', 'Huntington', 'WV', '304-659-1170', 45000.00),
(3, 'Yadel', '096 Pawling Parkway', 'San Francisco', 'CA', '415-144-6037', 65000.00),
(4, 'Kwideo', '81674 Westerfield Circle', 'Waco', 'TX', '254-750-0784', 47000.00),
(5, 'Topiclounge', '0863 Farmco Road', 'Portland', 'OR', '971-888-9129', 62000.00),
(6, 'Techsys', '1450 Elm St', 'Austin', 'TX', '512-234-5678', 72000.00),
(7, 'Innovent', '200 West Loop', 'Dallas', 'TX', '214-789-2345', 69000.00),
(8, 'Softlabs', '870 Mission Blvd', 'San Diego', 'CA', '619-555-7834', 58000.00),
(9, 'Mediware', '190 Broadway Ave', 'New York', 'NY', '212-333-4567', 89000.00),
(10, 'CompSystems', '40 North Ave', 'Chicago', 'IL', '312-444-9123', 51000.00),
(11, 'SmartTech', '350 Elm St', 'Denver', 'CO', '303-222-4567', 78000.00),
(12, 'GreenSol', '1156 Willow Rd', 'Seattle', 'WA', '206-987-5432', 60000.00),
(13, 'NextGen', '2345 Pine St', 'Harrisburg', 'PA', '717-321-9876', 63000.00),
(14, 'BrightCorp', '478 North Main', 'Phoenix', 'AZ', '602-555-7645', 70000.00),
(15, 'AlphaWorks', '256 South St', 'Nashville', 'TN', '615-874-4567', 49000.00),
(16, 'DataMind', '562 Oak Dr', 'San Jose', 'CA', '408-901-3245', 75000.00),
(17, 'Skyline', '832 West Blvd', 'Orlando', 'FL', '407-123-4567', 67000.00),
(18, 'UrbanSpace', '98 North Road', 'Portland', 'OR', '503-555-9876', 58000.00),
(19, 'LogicPlus', '743 East 1st', 'Atlanta', 'GA', '404-231-9876', 55000.00),
(20, 'CoreNext', '532 Main Blvd', 'Raleigh', 'NC', '919-555-6734', 61000.00),
(21, 'PrimeWare', '2159 Maple St', 'Miami', 'FL', '305-665-7834', 60000.00),
(22, 'NanoTech', '745 North Loop', 'Seattle', 'WA', '206-785-4321', 73000.00),
(23, 'VirtualEdge', '1874 Crestline Dr', 'Boise', 'ID', '208-543-8765', 52000.00),
(24, 'Technium', '340 East Ave', 'Houston', 'TX', '713-123-4567', 48000.00),
(25, 'Visionary', '789 Pine Blvd', 'Salt Lake City', 'UT', '801-987-5432', 70000.00),
(26, 'BlueTech', '423 North Drive', 'Newark', 'NJ', '973-765-4321', 59000.00),
(27, 'CloudBase', '740 West Loop', 'Charlotte', 'NC', '704-543-9876', 61000.00),
(28, 'FusionTech', '68 South Lane', 'Las Vegas', 'NV', '702-231-6543', 58000.00),
(29, 'NextVision', '495 South Road', 'Tampa', 'FL', '813-555-6789', 63000.00),
(30, 'HyperWorks', '387 Crestline', 'Albany', 'NY', '518-765-4321', 56000.00),
(31, 'BrightNet', '45 East 2nd', 'Phoenix', 'AZ', '602-765-2314', 74000.00),
(32, 'AlphaLink', '912 Maple St', 'Denver', 'CO', '303-123-9876', 77000.00),
(33, 'GreenCloud', '76 Cedar Rd', 'Los Angeles', 'CA', '213-654-7890', 82000.00),
(34, 'FutureTech', '19 West Blvd', 'Boston', 'MA', '617-555-7645', 66000.00),
(35, 'BrightPoint', '45 3rd Ave', 'San Diego', 'CA', '619-876-5432', 78000.00),
(36, 'CoreCloud', '3504 South Park', 'Dallas', 'TX', '214-555-4567', 71000.00),
(37, 'DeltaSys', '492 Westline', 'Chicago', 'IL', '312-765-3210', 57000.00),
(38, 'SmartWorks', '450 North Blvd', 'Portland', 'OR', '503-555-9876', 60000.00),
(39, 'InnoSpace', '231 6th Ave', 'Orlando', 'FL', '407-543-0987', 69000.00),
(40, 'VisionCore', '781 Maple Dr', 'Austin', 'TX', '512-555-3210', 75000.00),
(41, 'TrueLogic', '90 Oak St', 'Newark', 'NJ', '973-654-9876', 68000.00),
(42, 'BrightEdge', '572 Main Dr', 'Salt Lake City', 'UT', '801-765-2345', 71000.00),
(43, 'NanoEdge', '24 North Blvd', 'Charlotte', 'NC', '704-876-5432', 64000.00),
(44, 'SkylineSys', '560 Westline', 'Albany', 'NY', '518-765-1234', 56000.00),
(45, 'BrightMind', '1783 Oak Blvd', 'Seattle', 'WA', '206-231-7654', 67000.00),
(46, 'HyperBase', '345 Pine Dr', 'Las Vegas', 'NV', '702-123-7654', 71000.00),
(47, 'VisionNet', '402 South Blvd', 'Harrisburg', 'PA', '717-543-1234', 58000.00),
(48, 'CoreVision', '860 Cedar Rd', 'Tampa', 'FL', '813-555-1234', 63000.00),
(49, 'BrightCloud', '530 Crestline', 'Boise', 'ID', '208-654-3210', 59000.00),
(50, 'TrueWorks', '123 Maple Dr', 'Miami', 'FL', '305-765-4321', 60000.00),
(51, 'BlueNet', '342 Park Rd', 'Los Angeles', 'CA', '323-654-1234', 72000.00),
(52, 'BrightBase', '90 North Dr', 'San Francisco', 'CA', '415-765-4321', 75000.00),
(53, 'LogicEdge', '57 4th Ave', 'Huntington', 'WV', '304-555-9876', 52000.00),
(54, 'NextPoint', '890 Oak Rd', 'Waco', 'TX', '254-543-0987', 59000.00),
(55, 'CoreBright', '780 South Park', 'Phoenix', 'AZ', '602-543-7890', 72000.00),
(56, 'DeltaEdge', '341 Westline', 'Nashville', 'TN', '615-987-6543', 58000.00),
(57, 'SkyBright', '79 2nd St', 'Denver', 'CO', '303-543-1234', 69000.00),
(58, 'VisionLink', '200 Crestline', 'Salt Lake City', 'UT', '801-654-7654', 62000.00),
(59, 'BrightWave', '490 Maple St', 'Portland', 'OR', '503-876-5432', 71000.00),
(60, 'GreenVision', '570 Pine Blvd', 'Dallas', 'TX', '214-543-5678', 65000.00),
(61, 'CoreEdge', '405 West Ave', 'Raleigh', 'NC', '919-765-4321', 61000.00),
(62, 'NanoWave', '800 North Blvd', 'Huntington', 'WV', '304-543-7890', 49000.00),
(63, 'BrightSys', '760 Elm Dr', 'Austin', 'TX', '512-876-5432', 64000.00),
(64, 'CoreMind', '90 South Ave', 'Boise', 'ID', '208-123-4567', 58000.00),
(65, 'FutureBright', '420 Maple St', 'Albany', 'NY', '518-765-5432', 61000.00),
(66, 'SkyEdge', '780 Oak Blvd', 'Charlotte', 'NC', '704-654-1234', 59000.00),
(67, 'CoreWave', '630 Crestline', 'Las Vegas', 'NV', '702-321-9876', 71000.00),
(68, 'BrightEdge', '740 Maple Rd', 'Orlando', 'FL', '407-543-7654', 65000.00),
(69, 'FutureGrid', '620 South Rd', 'Los Angeles', 'CA', '323-555-7890', 670);

-- Selects all the fields available in our table (clients)
SELECT * 
FROM clients;

-- Selects city and salary fields in our table (clients)
SELECT name, city, salary 
FROM clients;

-- Selects address and city fields in our table (clients) and filter by the state field
-- Displaying records that contain TX in the state field
SELECT name, address, city 
FROM clients 
WHERE state = 'TX';

-- Selects name and salary fields in our table (clients) and filter by the salary field
-- Displaying records that are above 70000 in the salary field
SELECT name, salary 
FROM clients 
WHERE salary > 70000.00;

-- Selects name and phone fields in our table (clients) and filter by the city field
-- Displaying records that contain San Francisco in the city field
SELECT name, phone 
FROM clients 
WHERE city = 'San Francisco';

-- Selects name and city fields in our table (clients) and display records in name field that starts with A
SELECT name, city 
FROM clients 
WHERE name LIKE 'A%';

-- Selects name and salary fields in our table (clients) and filter by the salary field
-- Displaying records of salaries that falls between 60000 and 80000
SELECT name, salary 
FROM clients 
WHERE salary BETWEEN 60000 AND 80000;

-- Selects name and state fields in our table (clients) and filter by the state field
-- Displaying records that does not contain CA in the state field
SELECT name, state 
FROM clients 
WHERE state != 'CA';

-- Selects name and phone fields in our table (clients) and display records in name field that contains the word Tech in it
SELECT name, phone 
FROM clients 
WHERE name LIKE '%Tech%';

SELECT name, city 
FROM clients 
WHERE phone IS NULL;
