START TRANSACTION;
UPDATE Student_Details SET Student_Phone = '555-1454' WHERE Student_ID = 1;
UPDATE Admission SET Phone = '555-1454' WHERE Student_ID = 1;
COMMIT;

