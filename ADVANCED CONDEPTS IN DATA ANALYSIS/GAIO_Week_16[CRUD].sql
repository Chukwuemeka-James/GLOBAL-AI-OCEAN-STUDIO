-- INTRODUCTION TO CRUD OPERATIONS

-- CRUD stands for:
-- C - CREATE  (Inserting new records)
-- R - READ    (Retrieving or fetching records)
-- U - UPDATE  (Modifying existing records)
-- D - DELETE  (Removing records from the database)
-- 
-- These are the four essential operations for managing any database system.
-- This script demonstrates CRUD operations using a "Students" table.

-- STEP 1: CREATE (Defining the table structure)

USE sys;
CREATE TABLE Students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    age INT CHECK (age >= 16),
    department VARCHAR(50),
    gpa DECIMAL(3,2) DEFAULT 0.0,
    enrollment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- STEP 2: CREATE (Inserting records)

-- Insert multiple students into the database.

INSERT INTO Students (first_name, last_name, email, age, department, gpa)
VALUES 
('John', 'Doe', 'johndoe@example.com', 20, 'Computer Science', 3.8),
('Alice', 'Smith', 'alice@example.com', 22, 'Engineering', 3.5),
('Bob', 'Brown', 'bobbrown@example.com', 19, 'Mathematics', 3.2),
('Emma', 'Jones', 'emma@example.com', 18, 'Physics', 3.7),
('Michael', 'Lee', 'michael@example.com', 21, 'Biology', 3.4),
('Sophia', 'Wilson', 'sophia@example.com', 23, 'Statistics', 3.6),
('Daniel', 'Martinez', 'daniel@example.com', 24, 'Computer Science', 3.1),
('Olivia', 'Taylor', 'olivia@example.com', 20, 'Engineering', 3.9),
('James', 'Anderson', 'james@example.com', 22, 'Mathematics', 3.3),
('Isabella', 'Thomas', 'isabella@example.com', 21, 'Physics', 3.8),
('William', 'Harris', 'william@example.com', 25, 'Biology', 3.2),
('Mason', 'White', 'mason@example.com', 19, 'Computer Science', 3.6),
('Liam', 'Lewis', 'liam@example.com', 22, 'Engineering', 3.7),
('Charlotte', 'Walker', 'charlotte@example.com', 23, 'Mathematics', 3.9),
('Benjamin', 'Hall', 'benjamin@example.com', 20, 'Physics', 3.5),
('Elijah', 'Allen', 'elijah@example.com', 21, 'Biology', 3.3),
('Ava', 'Young', 'ava@example.com', 19, 'Computer Science', 3.8),
('Henry', 'King', 'henry@example.com', 22, 'Statistics', 3.4),
('Alexander', 'Wright', 'alexander@example.com', 24, 'Engineering', 3.1),
('Amelia', 'Scott', 'amelia@example.com', 20, 'Mathematics', 3.7);

-- STEP 3: READ (Fetching Data)

-- Retrieve all students sorted by GPA
SELECT * FROM Students ORDER BY gpa DESC;

-- Retrieve students from a specific department
SELECT * FROM Students WHERE department = 'Computer Science';

-- Get the top 5 students by GPA
SELECT * FROM Students ORDER BY gpa DESC LIMIT 5;

-- Find students older than 21
SELECT * FROM Students WHERE age > 21;

-- Search for students whose name starts with 'A'
SELECT * FROM Students WHERE first_name LIKE 'A%';

-- STEP 4: UPDATE (Modifying existing data)

-- Update a student's GPA
UPDATE Students 
SET gpa = 3.9 
WHERE email = 'johndoe@example.com';

-- Change a student's department
UPDATE Students 
SET department = 'Data Science' 
WHERE email = 'emma@example.com';

-- Increase GPA of all students in Computer Science by 0.1
UPDATE Students 
SET gpa = gpa + 0.1 
WHERE department = 'Computer Science';

-- STEP 5: DELETE (Removing records)

-- Delete a student by email
DELETE FROM Students WHERE email = 'bobbrown@example.com';

-- Remove all students from a specific department
DELETE FROM Students WHERE department = 'Statistics';

-- Delete students with a GPA lower than 3.0
DELETE FROM Students WHERE gpa < 3.0;
