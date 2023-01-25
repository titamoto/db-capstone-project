CREATE PROCEDURE `CancelOrder` (inputid INT)
BEGIN
DELETE FROM Orders WHERE OrderID = inputid;
END
