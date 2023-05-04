SELECT Course_Name FROM Course
JOIN Teaches ON Course.Course_ID = Teaches.Course_ID
JOIN Professor ON Teaches.Prof_ID = Professor.Prof_ID
WHERE Professor.Prof_Name = 'John Smith';
