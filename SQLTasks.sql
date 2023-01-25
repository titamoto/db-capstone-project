/* Week 2 Task 1*/
SELECT * FROM OrdersView;

/* Week 2 Task 2 */
SELECT Customers.CustomerID, Customers.CustomerName, Orders.OrderID, 
Orders.BillAmount AS 'Cost', MenuItems.ItemName, MenuItems.ItemType
FROM Customers RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID 
LEFT JOIN MenuItems ON MenuItems.MenuItemID = Orders.MenuItemID 
WHERE Orders.BillAmount > 150 ORDER BY Orders.BillAmount;

/* Week 2 Task 3 I changed the output to ItemType, ItemName 
since my model doesn't have Menus table neither MenuName column*/
SELECT ItemType, ItemName FROM MenuItems
WHERE MenuItemID = ANY (SELECT MenuItemID FROM Orders
WHERE Quantity > 2); 

/* Week 2 Task 4  Procedure created as a separate script*/
CALL GetMaxQuantity();

/* Week 2 Task 5 Statement created as a separate script*/
SET @id = 1;
EXECUTE GetOrderDetail USING @id;

/* Week 2 Task 6 */
CALL CancelOrder(5);
/* SELECT * FROM Orders; */