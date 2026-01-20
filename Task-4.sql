use intern_training_db;
CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    department VARCHAR(50),
    marks INT
);
INSERT INTO students (name, department, marks) VALUES
('sruthi', 'CSE', 88),
('ruchi', 'ECE', 92),
('abhi', 'CSE', 75),
('puppy', 'IT', 92),
('venu', 'CSE', 65),
('sriram', 'ECE', 80),
('vijju', 'IT', 70);
SELECT * FROM students
ORDER BY marks;
SELECT * FROM students
ORDER BY marks DESC;
SELECT * FROM students
ORDER BY marks DESC, name ASC;
SELECT * FROM students
ORDER BY marks DESC
LIMIT 3;
SELECT * FROM students
WHERE department = 'CSE'
ORDER BY marks DESC;
SELECT * FROM students
ORDER BY marks DESC
LIMIT 3 OFFSET 0;
SELECT * FROM students
ORDER BY marks DESC
LIMIT 3 OFFSET 3;
SELECT name, department, marks
FROM students
ORDER BY marks DESC
LIMIT 5;
SELECT * FROM students
WHERE marks > 100;
SELECT * FROM students
ORDER BY marks DESC, student_id ASC;
CREATE INDEX idx_marks ON students(marks);

