--grant on admins
GRANT ALL PRIVILEGES ON . TO 'admin'@'localhost';

--grant on professors

GRANT SELECT, UPDATE ON Course TO 'professor'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON Enrolment TO 'professor'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON Teaches TO 'professor'@'localhost';
GRANT SELECT ON Attendance TO 'professor'@'localhost';


--grant on students

GRANT SELECT ON Admission TO 'student'@'localhost';
GRANT SELECT ON Payment TO 'student'@'localhost';
GRANT SELECT ON Enrolment TO 'student'@'localhost';
GRANT SELECT ON Attendance TO 'student'@'localhost';
