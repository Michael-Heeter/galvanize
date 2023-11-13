CREATE DATABASE galvanize;

\c galvanize;

CREATE TABLE instructor(instructor_id INT NOT NULL PRIMARY KEY, _name VARCHAR(50) NOT NULL);

INSERT INTO instructor (instructor_id, _name) VALUES (1, 'Garrett Ross');

CREATE TABLE students(student_id INT NOT NULL PRIMARY KEY, _name VARCHAR(50) NOT NULL, instructor_id INT REFERENCES instructor(instructor_id));

INSERT INTO students (student_id, _name, instructor_id) VALUES (1, 'Aaron', 1);
INSERT INTO students (student_id, _name, instructor_id) VALUES (2, 'Alex', 1);
INSERT INTO students (student_id, _name, instructor_id) VALUES (3, 'Colin', 1);
INSERT INTO students (student_id, _name, instructor_id) VALUES (4, 'Drew', 1);
INSERT INTO students (student_id, _name, instructor_id) VALUES (5, 'Jesse', 1);
INSERT INTO students (student_id, _name, instructor_id) VALUES (6, 'Josh', 1);
INSERT INTO students (student_id, _name, instructor_id) VALUES (7, 'Kiel', 1);
INSERT INTO students (student_id, _name, instructor_id) VALUES (8, 'Luke', 1);
INSERT INTO students (student_id, _name, instructor_id) VALUES (9, 'Mike', 1);
INSERT INTO students (student_id, _name, instructor_id) VALUES (10, 'Miles', 1);
INSERT INTO students (student_id, _name, instructor_id) VALUES (11, 'Nathan', 1);
INSERT INTO students (student_id, _name, instructor_id) VALUES (12, 'Noah', 1);
INSERT INTO students (student_id, _name, instructor_id) VALUES (13, 'Ryan', 1);
INSERT INTO students (student_id, _name, instructor_id) VALUES (14, 'Sean', 1);
INSERT INTO students (student_id, _name, instructor_id) VALUES (15, 'Steffan', 1);
INSERT INTO students (student_id, _name, instructor_id) VALUES (16, 'Thiem', 1);
INSERT INTO students (student_id, _name, instructor_id) VALUES (17, 'Will', 1);
INSERT INTO students (student_id, _name, instructor_id) VALUES (18, 'Zoi', 1);
