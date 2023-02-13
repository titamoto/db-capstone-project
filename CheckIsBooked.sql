CREATE DEFINER=`ll_admin`@`%` PROCEDURE `CheckIsBooked`(IN bdate DATETIME, IN tnumber INT, OUT isBooked BOOLEAN)
BEGIN
DECLARE Result INT DEFAULT 0;
SELECT TableNumber AS Result FROM Bookings
WHERE TableNumber = tnumber AND BookingDate = bdate;
IF Result = 0 
THEN SET isBooked = FALSE;
ELSE SET isBooked = TRUE;
END IF;
END