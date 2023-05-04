CREATE TRIGGER update_admission_status
AFTER INSERT ON Payment
FOR EACH ROW
  UPDATE Admission
  SET Admission_Status = 'Paid'
  WHERE Student_ID = NEW.Student_ID;


INSERT INTO Payment (Receipt_Number, Student_ID, Amount_Paid, Payment_Date)
VALUES (4, 103, 100.00, '2023-04-20');
