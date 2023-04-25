-- Insert three records into the Student table
INSERT INTO Student (Student_ID, Student_Class, Student_Details_ID)
VALUES (101, '10A', 1),
       (102, '10B', 2),
       (103, '10C', 3);

-- Insert three records into the Student_Details table
INSERT INTO Student_Details (Student_ID, Student_Name, Student_Phone)
VALUES (1, 'Alice Brown', '555-1234'),
       (3, 'Bob Green', '555-5678'),
       (2, 'Charlie Lee', '555-9012');

-- Insert three records into the Course table
INSERT INTO Course (Course_ID, Course_Name)
VALUES (1, 'Mathematics'),
       (2, 'English'),
       (3, 'Science');

-- Insert three records into the Admission table
INSERT INTO Admission (Admission_ID, Admission_Date, Admission_Status, Phone, Student_ID)
VALUES (1, '2022-09-01', 'Accepted', '555-1234', 101),
       (2, '2022-09-01', 'Accepted', '555-5678', 102),
       (3, '2022-09-02', 'Pending', '555-9012', 103);

-- Insert three records into the Attendance table
INSERT INTO Attendance (Attendance_ID, Attendance_Date, Student_ID, Student_Present, Student_Absent)
VALUES (1, '2022-09-01', 101, 'Yes', NULL),
       (2, '2022-09-01', 102, NULL, 'Yes'),
       (3, '2022-09-02', 103, 'Yes', NULL);


-- Insert three records into the Enrolment table
INSERT INTO Enrolment (Course_ID, Student_ID)
VALUES (1, 101),
       (2, 102),
       (3, 103);

-- Insert three records into the Payment table
INSERT INTO Payment (Receipt_Number, Student_ID, Amount_Paid, Payment_Date)
VALUES (1, 101, 1000.00, '2022-09-05'),
       (2, 102, 500.00, '2022-09-06'),
       (3, 103, 800.00, '2022-09-07');

-- Insert three records into the Professor table
INSERT INTO Professor (Prof_ID, Prof_Name)
VALUES (1, 'John Smith'),
       (2, 'Mary Johnson'),
       (3, 'David Lee');


-- Insert three records into the Teaches table
INSERT INTO Teaches (Course_ID, Prof_ID)
VALUES (1, 1),
       (2, 2),
       (3, 3);
