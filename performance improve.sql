-- Query 1: Joining Enrolment and Student, Student_Details tables on Student_ID column
SELECT e.Course_ID, sd.Student_Name
FROM Enrolment e 
JOIN Student s ON e.Student_ID = s.Student_ID
JOIN Student_Details sd on s.Student_Details_ID = s.Student_ID
WHERE s.Student_Class = '10A';

-- Query 2: Joining Teaches, Course, and Professor Tables on Prof_ID column
SELECT c.Course_Name, p.Prof_Name   
FROM Teaches t 
JOIN Course c ON t.Course_ID = c.Course_ID 
JOIN Professor p ON t.Prof_ID = p.Prof_ID 
WHERE c.Course_Name LIKE '%Math%';
