-- Index on Student_Details_ID column in Student table
CREATE INDEX Student_Details_ID_idx ON Student (Student_Details_ID);

-- Index on Student_ID column in Enrolment table
CREATE INDEX Enrolment_Student_ID_idx ON Enrolment (Student_ID);


-- Index on Prof_ID column in Teaches table
CREATE INDEX Teaches_Prof_ID_idx ON Teaches (Prof_ID);
