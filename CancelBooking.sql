CREATE DEFINER=`ll_admin`@`%` PROCEDURE `CancelBooking`(bid INT)
BEGIN
DELETE FROM Bookings WHERE BookingID = bid;
END