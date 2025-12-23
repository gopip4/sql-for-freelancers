-- Display all records from a table
SELECT * FROM students;

-- Display only names and marks
SELECT name, marks FROM students;

-- Students scoring more than 80
SELECT * FROM students WHERE marks > 80;

-- Students from class 10
SELECT * FROM students WHERE class = '10';

-- Students whose name starts with 'A'
SELECT * FROM students WHERE name LIKE 'A%';
-- Display all records from a table
SELECT * FROM students;

-- Display only names and marks
SELECT name, marks FROM students;

-- Students scoring more than 80
SELECT * FROM students WHERE marks > 80;

-- Students from class 10
SELECT * FROM students WHERE class = '10';

-- Students whose name starts with 'A'
SELECT * FROM students WHERE name LIKE 'A%';
-- Display students sorted by marks descending
SELECT * FROM students ORDER BY marks DESC;

-- Top 3 students with highest marks
SELECT * FROM students ORDER BY marks DESC LIMIT 3; -- MySQL
-- Oracle: use ROWNUM
SELECT * FROM (
    SELECT * FROM students ORDER BY marks DESC
) WHERE ROWNUM <= 3;
-- Count total students
SELECT COUNT(*) AS total_students FROM students;

-- Average marks
SELECT AVG(marks) AS average_marks FROM students;

-- Maximum marks
SELECT MAX(marks) AS highest_marks FROM students;

-- Minimum marks
SELECT MIN(marks) AS lowest_marks FROM students;

-- Total marks scored
SELECT SUM(marks) AS total_marks FROM students;
-- Count total students
SELECT COUNT(*) AS total_students FROM students;

-- Average marks
SELECT AVG(marks) AS average_marks FROM students;

-- Maximum marks
SELECT MAX(marks) AS highest_marks FROM students;

-- Minimum marks
SELECT MIN(marks) AS lowest_marks FROM students;

-- Total marks scored
SELECT SUM(marks) AS total_marks FROM students;
-- Count total students
SELECT COUNT(*) AS total_students FROM students;

-- Average marks
SELECT AVG(marks) AS average_marks FROM students;

-- Maximum marks
SELECT MAX(marks) AS highest_marks FROM students;

-- Minimum marks
SELECT MIN(marks) AS lowest_marks FROM students;

-- Total marks scored
SELECT SUM(marks) AS total_marks FROM students;
-- Average marks per class
SELECT class, AVG(marks) AS avg_marks
FROM students
GROUP BY class;

-- Classes with average marks > 70
SELECT class, AVG(marks) AS avg_marks
FROM students
GROUP BY class
HAVING AVG(marks) > 70;
-- Average marks per class
SELECT class, AVG(marks) AS avg_marks
FROM students
GROUP BY class;

-- Classes with average marks > 70
SELECT class, AVG(marks) AS avg_marks
FROM students
GROUP BY class
HAVING AVG(marks) > 70;
-- Average marks per class
SELECT class, AVG(marks) AS avg_marks
FROM students
GROUP BY class;

-- Classes with average marks > 70
SELECT class, AVG(marks) AS avg_marks
FROM students
GROUP BY class
HAVING AVG(marks) > 70;
-- Inner join: students with their classes
SELECT s.name, s.marks, c.class_name
FROM students s
INNER JOIN classes c ON s.class = c.class_id;

-- Left join: all students, even if class info missing
SELECT s.name, s.marks, c.class_name
FROM students s
LEFT JOIN classes c ON s.class = c.class_id;

-- Right join: all classes, even if no student
SELECT s.name, s.marks, c.class_name
FROM students s
RIGHT JOIN classes c ON s.class = c.class_id;
-- Inner join: students with their classes
SELECT s.name, s.marks, c.class_name
FROM students s
INNER JOIN classes c ON s.class = c.class_id;

-- Left join: all students, even if class info missing
SELECT s.name, s.marks, c.class_name
FROM students s
LEFT JOIN classes c ON s.class = c.class_id;

-- Right join: all classes, even if no student
SELECT s.name, s.marks, c.class_name
FROM students s
RIGHT JOIN classes c ON s.class = c.class_id;
-- Inner join: students with their classes
SELECT s.name, s.marks, c.class_name
FROM students s
INNER JOIN classes c ON s.class = c.class_id;

-- Left join: all students, even if class info missing
SELECT s.name, s.marks, c.class_name
FROM students s
LEFT JOIN classes c ON s.class = c.class_id;

-- Right join: all classes, even if no student
SELECT s.name, s.marks, c.class_name
FROM students s
RIGHT JOIN classes c ON s.class = c.class_id;
-- Inner join: students with their classes
SELECT s.name, s.marks, c.class_name
FROM students s
INNER JOIN classes c ON s.class = c.class_id;

-- Left join: all students, even if class info missing
SELECT s.name, s.marks, c.class_name
FROM students s
LEFT JOIN classes c ON s.class = c.class_id;

-- Right join: all classes, even if no student
SELECT s.name, s.marks, c.class_name
FROM students s
RIGHT JOIN classes c ON s.class = c.class_id;
-- Students scoring above average
SELECT name, marks
FROM students
WHERE marks > (SELECT AVG(marks) FROM students);

-- Students in classes with more than 5 students
SELECT * FROM students
WHERE class IN (
    SELECT class
    FROM students
    GROUP BY class
    HAVING COUNT(*) > 5
);
-- Students scoring above average
SELECT name, marks
FROM students
WHERE marks > (SELECT AVG(marks) FROM students);

-- Students in classes with more than 5 students
SELECT * FROM students
WHERE class IN (
    SELECT class
    FROM students
    GROUP BY class
    HAVING COUNT(*) > 5
);
-- Uppercase names
SELECT UPPER(name) FROM students;

-- First 3 characters of name
SELECT SUBSTR(name, 1, 3) FROM students;

-- Length of names
SELECT name, LENGTH(name) AS name_length FROM students;

-- Replace substring
SELECT REPLACE(name, 'a', '@') FROM students;
-- Uppercase names
SELECT UPPER(name) FROM students;

-- First 3 characters of name
SELECT SUBSTR(name, 1, 3) FROM students;

-- Length of names
SELECT name, LENGTH(name) AS name_length FROM students;

-- Replace substring
SELECT REPLACE(name, 'a', '@') FROM students;
-- Current date
SELECT SYSDATE; -- Oracle
SELECT NOW(); -- MySQL

-- Add 1 month to current date
SELECT ADD_MONTHS(SYSDATE, 1) FROM dual; -- Oracle
SELECT DATE_ADD(NOW(), INTERVAL 1 MONTH); -- MySQL

-- Days between two dates
SELECT DATEDIFF('2025-12-31', '2025-12-01'); -- MySQL
-- Current date
SELECT SYSDATE; -- Oracle
SELECT NOW(); -- MySQL

-- Add 1 month to current date
SELECT ADD_MONTHS(SYSDATE, 1) FROM dual; -- Oracle
SELECT DATE_ADD(NOW(), INTERVAL 1 MONTH); -- MySQL

-- Days between two dates
SELECT DATEDIFF('2025-12-31', '2025-12-01'); -- MySQL
-- Current date
SELECT SYSDATE; -- Oracle
SELECT NOW(); -- MySQL

-- Add 1 month to current date
SELECT ADD_MONTHS(SYSDATE, 1) FROM dual; -- Oracle
SELECT DATE_ADD(NOW(), INTERVAL 1 MONTH); -- MySQL

-- Days between two dates
SELECT DATEDIFF('2025-12-31', '2025-12-01'); -- MySQL
-- Marks grade using CASE
SELECT name, marks,
CASE
    WHEN marks >= 90 THEN 'A+'
    WHEN marks >= 80 THEN 'A'
    WHEN marks >= 70 THEN 'B'
    ELSE 'C'
END AS grade
FROM students;

-- Replace NULL marks with 0
SELECT name, NVL(marks, 0) AS marks FROM students; -- Oracle
SELECT name, IFNULL(marks, 0) AS marks FROM students; -- MySQL
-- Marks grade using CASE
SELECT name, marks,
CASE
    WHEN marks >= 90 THEN 'A+'
    WHEN marks >= 80 THEN 'A'
    WHEN marks >= 70 THEN 'B'
    ELSE 'C'
END AS grade
FROM students;

-- Replace NULL marks with 0
SELECT name, NVL(marks, 0) AS marks FROM students; -- Oracle
SELECT name, IFNULL(marks, 0) AS marks FROM students; -- MySQL
-- Row numbers
SELECT name, marks, ROW_NUMBER() OVER (ORDER BY marks DESC) AS rank
FROM students;

-- Top 3 students using RANK
SELECT name, marks, RANK() OVER (ORDER BY marks DESC) AS rank
FROM students;

-- Listagg: names in one row
SELECT LISTAGG(name, ', ') WITHIN GROUP (ORDER BY name) AS all_names
FROM students; -- Oracle
-- Row numbers
SELECT name, marks, ROW_NUMBER() OVER (ORDER BY marks DESC) AS rank
FROM students;

-- Top 3 students using RANK
SELECT name, marks, RANK() OVER (ORDER BY marks DESC) AS rank
FROM students;

-- Listagg: names in one row
SELECT LISTAGG(name, ', ') WITHIN GROUP (ORDER BY name) AS all_names
FROM students; -- Oracle
