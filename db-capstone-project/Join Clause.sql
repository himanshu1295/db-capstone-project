-- Task 2
-- For your second task, Little Lemon need information from four tables on all customers with orders that cost more than $150. 
-- Extract the required information from each of the following tables by using the relevant JOIN clause: 
-- Customers table: The customer id and full name.
-- Orders table: The order id and cost.
-- Menus table: The menus name.
-- MenusItems table: course name and starter name.
-- The result set should be sorted by the lowest cost amount.


SELECT Customer.CustomerID, Customer.FullName, Orders.OrderID, Orders.TotalCost, Menu.MenuName, MenuItems.CourseName
FROM Customer INNER JOIN Orders
ON Customer.CustomerID = Orders.CustomerID
INNER JOIN Menu
ON Orders.MenuID = Menu.MenuID
INNER JOIN MenuItems
ON Menu.MenuItemsID = MenuItems.MenuItemsID
WHERE TotalCost > 150
ORDER BY TotalCost ASC;
