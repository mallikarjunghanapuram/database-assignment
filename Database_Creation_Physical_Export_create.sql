    -- Created by Vertabelo (http://vertabelo.com)
    -- Last modification date: 2023-04-12 03:50:18.146

    -- tables
    -- Table: Admission
    CREATE TABLE Admission (
        Admission_ID  int  NOT NULL,
        Admission_Date  date  NULL,
        Admission_Status  varchar(30)  NULL,
        Phone varchar(12)  NULL,
        Student_ID  int  NULL,
        CONSTRAINT Admission_pk PRIMARY KEY (Admission_ID )
    );

    -- Table: Attendance
    CREATE TABLE Attendance (
        Attendance_ID  int  NOT NULL,
        Attendance_Date  date  NULL,
        Student_ID  int  NULL,
        Student_Present  varchar(20)  NULL,
        Student_Absent  varchar(20)  NULL,
        CONSTRAINT Attendance_pk PRIMARY KEY (Attendance_ID )
    );

    -- Table: Course
    CREATE TABLE Course (
        Course_ID  int  NOT NULL,
        Course_Name  varchar(30)  NULL,
        CONSTRAINT Course_pk PRIMARY KEY (Course_ID )
    );

    -- Table: Enrolment
    CREATE TABLE Enrolment (
        Course_ID int  NOT NULL,
        Student_ID int  NOT NULL,
        Course_Course_ID  int  NOT NULL,
        CONSTRAINT Enrolment_pk PRIMARY KEY (Course_ID,Student_ID)
    );

    -- Table: Payment
    CREATE TABLE Payment (
        Receipt_Number int  NOT NULL,
        Student_ID  int  NULL,
        Amount_Paid  decimal(20,2)  NULL,
        Payment_Date date  NULL,
        CONSTRAINT Payment_pk PRIMARY KEY (Receipt_Number)
    );

    -- Table: Professor
    CREATE TABLE Professor (
        Prof_ID  int  NOT NULL,
        Prof_Name varchar(30)  NOT NULL,
        CONSTRAINT Professor_pk PRIMARY KEY (Prof_ID )
    );

    -- Table: Student
    CREATE TABLE Student (
        Student_ID  int  NOT NULL,
        Student_Class  varchar(10)  NULL,
        Student_Details_ID  int  NULL,
        CONSTRAINT Student_pk PRIMARY KEY (Student_ID )
    );

    -- Table: Student_Details
    CREATE TABLE Student_Details (
        Student_ID  int  NOT NULL,
        Student_Name  varchar(20)  NULL,
        Student_Phone  varchar(12)  NULL,
        CONSTRAINT Student_Details_pk PRIMARY KEY (Student_ID )
    );

    -- Table: Teaches
    CREATE TABLE Teaches (
        Course_ID int  NOT NULL,
        Prof_ID int  NOT NULL,
        CONSTRAINT Teaches_pk PRIMARY KEY (Course_ID,Prof_ID)
    );

    -- foreign keys
    -- Reference: Admission_Student (table: Admission)
    ALTER TABLE Admission ADD CONSTRAINT Admission_Student FOREIGN KEY Admission_Student (Student_ID )
        REFERENCES Student (Student_ID );

    -- Reference: Attendance_Student (table: Attendance)
    ALTER TABLE Attendance ADD CONSTRAINT Attendance_Student FOREIGN KEY Attendance_Student (Student_ID )
        REFERENCES Student (Student_ID );

    -- Reference: Enrolment_Course (table: Enrolment)
    ALTER TABLE Enrolment ADD CONSTRAINT Enrolment_Course FOREIGN KEY Enrolment_Student (Course_ID )
        REFERENCES Course (Course_ID );

    -- Reference: Enrolment_Student (table: Enrolment)
    ALTER TABLE Enrolment ADD CONSTRAINT Enrolment_Student FOREIGN KEY Enrolment_Student (Student_ID )
        REFERENCES Student (Student_ID );

    -- Reference: Student_Payment (table: Payment)
    ALTER TABLE Payment ADD CONSTRAINT Student_Payment FOREIGN KEY Payment_Student (Student_ID )
        REFERENCES Student (Student_ID );

    -- Reference: Teaches_Course (table: Teaches)
    ALTER TABLE Teaches ADD CONSTRAINT Teaches_Course FOREIGN KEY Course_Prof (Course_ID )
        REFERENCES Course (Course_ID );

    -- Reference: Teaches_Professor (table: Teaches)
    ALTER TABLE Teaches ADD CONSTRAINT Teaches_Professor FOREIGN KEY Professor_Teach (Prof_ID )
        REFERENCES Professor (Prof_ID );

    -- End of file.

