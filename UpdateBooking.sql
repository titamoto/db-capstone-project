CREATE DEFINER=`ll_admin`@`%` PROCEDURE `UpdateBooking`(bid INT, bdate DATETIME)
BEGIN
UPDATE Bookings SET BookingID = bid, BookingDate = bdate;
END