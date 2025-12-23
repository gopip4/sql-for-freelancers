-- Student Management System

CREATE DATABASE student_db;
USE student_db;

CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    class VARCHAR(10),
    marks INT
);

INSERT INTO students (name, class, marks) VALUES
('Ravi', '10', 85),
('Sita', '10', 92),
('Arjun', '9', 76);

-- Display all students
SELECT * FROM students;

-- Students scoring above 80
SELECT name, marks
FROM students
WHERE marks > 80;

-- Class-wise average marks
SELECT class, AVG(marks) AS average_marks
FROM students
GROUP BY class;
