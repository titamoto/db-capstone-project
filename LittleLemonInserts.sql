USE littlelemondb;
DELETE FROM Bookings;
INSERT INTO Bookings (BookingID, BookingDate, TableNumber, NumberOfGuests)
VALUES (1, '2021-11-10', 5, 2), 
(2, '2021-11-10', 3, 2), 
(3, '2021-11-11', 2, 5),  
(4, '2021-11-11', 5, 2),  
(5, '2021-11-11', 3, 2), 
(6, '2021-11-11', 3, 5),  
(7, '2021-11-12', 5, 2),  
(8, '2021-11-12', 3, 2), 
(9, '2021-11-13', 7, 5),  
(10, '2021-11-14', 5, 2);
DELETE FROM Customers;
INSERT INTO Customers (CustomerID, CustomerName, PhoneNumber, BookingID) 
VALUES (1, "Vanessa McCarthy", 0757536378, 6), 
(2, "Marcos Romero", 0757536379, 1), 
(3, "Hiroki Yamane", 0757536376, 2), 
(4, "Anna Iversen", 0757536375, 8), 
(5, "Diana Pinto", 0757536374, 3),     
(6, "Altay Ayhan", 0757636378, 4),      
(7, "Jane Murphy", 0753536379, 5),      
(8, "Laurina Delgado", 0754536376, 9),      
(9, "Mike Edwards", 0757236375, 7),     
(10, "Karl Pederson", 0757936374, 10);
DELETE FROM MenuItems;
INSERT INTO MenuItems (MenuItemID, ItemName, ItemType, ItemPrice, Cuisine)
VALUES (1, 'Olives','Starters', 5, 'Greek'),
(2, 'Flatbread','Starters', 5, 'Turkish'),
(3, 'Minestrone', 'Starters', 8, 'Italian'),
(4, 'Tomato bread','Starters', 8, 'Italian'),
(5, 'Falafel', 'Starters', 7, 'Turkish'),
(6, 'Hummus', 'Starters', 5, 'Turkish'),
(7, 'Greek salad', 'Main Courses', 15, 'Greek'),
(8, 'Bean soup', 'Main Courses', 12, 'Italian'),
(9, 'Pizza', 'Main Courses', 15, 'Italian'),
(10, 'Greek yoghurt','Desserts', 7, 'Greek'),
(11, 'Ice cream', 'Desserts', 6, 'Turkish'),
(12, 'Cheesecake', 'Desserts', 4, 'Italian'),
(13, 'Athens White wine', 'Drinks', 25, 'Greek'),
(14, 'Corfu Red Wine', 'Drinks', 30, 'Greek'),
(15, 'Turkish Coffee', 'Drinks', 10, 'Italian'),
(16, 'Turkish Coffee', 'Drinks', 10, 'Turkish'),
(17, 'Kabasa', 'Main Courses', 17, 'Turkish');
DELETE FROM Orders;
INSERT INTO Orders (OrderID, CustomerID, BillAmount, MenuItemID, Quantity)
VALUES (1, 1, 150, 17, 5), (2, 2, 200, 7, 3),
(3, 3, 120, 5, 3), (4, 4, 70, 15, 1),
(5, 5, 175, 10, 2), (6, 6, 200, 7, 5),
(7, 7, 125, 3, 1), (8, 8, 150, 17, 1),
(9, 9, 50, 4, 1), (10, 10, 220, 13, 6),
(11, 2, 200, 13, 5), (12, 6, 200, 15, 1);  