USE school_management;
-- Week 1 Database Assignment
-- Topic: School Management

-- Create the database

-- Select the database
USE school_management;

-- Create students table
CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    date_of_birth DATE
);

-- Create teachers table
CREATE TABLE teachers (
    teacher_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    subject VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE
);

-- Create classes table
CREATE TABLE classes (
    class_id INT AUTO_INCREMENT PRIMARY KEY,
    class_name VARCHAR(50) NOT NULL,
    teacher_id INT,
    FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id)
);

-- Insert students
INSERT INTO students (first_name, last_name, email, date_of_birth)
VALUES
('John', 'Deng', 'john.deng@email.com', '2005-03-15'),
('Mary', 'Akech', 'mary.akech@email.com', '2006-07-22'),
('Peter', 'James', 'peter.james@email.com', '2005-11-10');

-- Insert teachers
INSERT INTO teachers (first_name, last_name, subject, email)
VALUES
('David', 'Smith', 'Mathematics', 'david.smith@school.com'),
('Sarah', 'Johnson', 'English', 'sarah.johnson@school.com'),
('Michael', 'Brown', 'Science', 'michael.brown@school.com');

-- Insert classes
INSERT INTO classes (class_name, teacher_id)
VALUES
('Grade 10A', 1),
('Grade 10B', 2),
('Grade 11A', 3);

-- Display all students
SELECT * FROM students;

-- Display all teachers
SELECT * FROM teachers;

-- Display all classes
SELECT * FROM classes;