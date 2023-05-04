CREATE VIEW Enrolled_Students AS
SELECT e.Course_ID, c.Course_Name, sd.Student_Name, sd.Student_Phone, s.Student_Class
FROM Enrolment e
INNER JOIN Student s ON e.Student_ID = s.Student_ID
INNER JOIN Student_Details sd ON s.Student_Details_ID = sd.Student_ID
INNER JOIN Course c ON e.Course_ID = c.Course_ID;



CREATE VIEW Payments_Summary AS
SELECT Student_ID, SUM(Amount_Paid) AS Total_Amount_Paid
FROM Payment
GROUP BY Student_ID;
