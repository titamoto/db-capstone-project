CREATE DEFINER=`ll_admin`@`%` PROCEDURE `CheckBooking`(IN bdate DATETIME, IN tnumber INT, OUT booking_status VARCHAR(100))
BEGIN
CALL CheckIsBooked (bdate, tnumber, @isBooked);
IF @isBooked = 1 THEN
SET booking_status = CONCAT("Table ", tnumber, " is already booked");
ELSE SET booking_status = CONCAT("Table ", tnumber, " is not booked");
END IF;
END