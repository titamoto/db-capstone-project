CREATE DEFINER=`ll_admin`@`%` PROCEDURE `AddBooking`(bid INT, bdate DATETIME, tnumber INT, guests INT)
BEGIN
INSERT INTO Bookings (BookingID, BookingDate, TableNumber, NumberOfGuests) 
VALUES (bid, bdate, tnumber, guests);
END