CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `ll_admin`@`%` 
    SQL SECURITY DEFINER
VIEW `ordersview` AS
    SELECT 
        `orders`.`OrderID` AS `OrderID`,
        `orders`.`Quantity` AS `Quantity`,
        `orders`.`BillAmount` AS `Cost`
    FROM
        `orders`
    WHERE
        (`orders`.`Quantity` > 2)