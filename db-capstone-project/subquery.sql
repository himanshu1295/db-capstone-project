-- Task 3
-- For the third and final task, Little Lemon need you to find all menu items for which more than 2 orders have been placed. 
-- You can carry out this task by creating a subquery that lists the menu names from the menus table for any order quantity with more than 2.
-- Here’s some guidance around completing this task: 
-- Use the ANY operator in a subquery
-- The outer query should be used to select the menu name from the menus table.
-- The inner query should check if any item quantity in the order table is more than 2. 

SELECT MenuName
FROM Menu
WHERE MenuID = ANY(
SELECT MenuID
FROM Orders
WHERE Quantity > 2
);
