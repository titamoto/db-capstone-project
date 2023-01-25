CREATE DEFINER=`ll_admin`@`%` PROCEDURE `GetMaxQuantity`()
BEGIN
SELECT MAX(Quantity) as 'Max Quantity in Order' FROM Orders;
END