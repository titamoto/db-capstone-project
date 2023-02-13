CREATE DEFINER=`ll_admin`@`%` PROCEDURE `AddValidBooking`(bdate DATETIME, tnumber INT)
BEGIN
START TRANSACTION;
INSERT INTO Bookings (BookingDate, TableNumber) VALUES (bdate, tnumber);
CALL CheckIsBooked (bdate, tnumber, @isBooked);
IF @isBooked = 1
THEN SELECT CONCAT("Table ", TableNumber, "is already booked -- booking cancelled")
FROM Bookings
ROLLBACK;
ELSE 
SELECT CONCAT("Table ", TableNumber, "-- booking added") FROM Bookings 
COMMIT;
END IF;
END