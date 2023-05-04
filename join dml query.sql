SELECT Course_Name FROM Course
JOIN Enrolment ON Course.Course_ID = Enrolment.Course_ID
WHERE Enrolment.Student_ID = 101;

SELECT s.Student_ID, s.Student_Class, d.Student_Name, d.Student_Phone 
FROM Student as s
INNER JOIN Student_Details as d
ON s.Student_Details_ID = d.Student_ID;
