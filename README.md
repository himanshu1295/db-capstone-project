# Database Engineer Capstone Project

In this project, I  was required to create a data model for Little Lemon Restaurant and deploy it in the MySQL database. This includes a set of tables to store relevant information. I have populated the tables with some records of data for testing purposes. In addition, I have analyzed data using the Little Lemon Excel Data File. Further, I have completed the data analysis in Tableau.

I have demonstrated my ability with the following tools and software:
- Git,
- MySQL Workbench,
- Tableau,
- Python,
- Jupyter Notebook,

In this project, I have proven my ability to:
- Set up a database project,
- Add sales reports,
- Create a table booking system,
- Work with data analytics and visualization,
- Create a database client.

## Following Tasks were completed in this Project :

## Task 1 :

- Scenario

> Little Lemon needs to build a robust relational database system in MySQL in which they can store large amounts of data. They then need to easily manage and find this data as required. Little Lemon has decided to use MySQL Workbench to develop its new database system. This database system should maintain information about the following aspects of the business:
 
> 1. Bookings.
 
> 2. Orders.

> 3. Order delivery status.

> 4. Menu.

> 5. Customer details.

> 6. Staff information.

- Set up the MySQL instance server in MySQL Workbench.

- First, you need to create a normalized ER diagram (that adheres to 1NF, 2NF, and 3NF) with relevant relationships to meet the data requirements of Little Lemon. When creating your diagram, include the following tables:

> 1. Bookings: To store information about booked tables in the restaurant including booking ID, date, and table number.

> 2. Orders: To store information about each order such as order date, quantity, and total cost.

> 3. Order delivery status: To store information about the delivery status of each order such as delivery date and status.

> 4. Menu: To store information about cuisines, starters, courses, drinks, and desserts.

> 5. Customer details: To store information about the customer's names and contact details.

> 6. Staff information: Including role and salary.

- You need to implement the Little Lemon data model inside your MySQL server.
  
- You need to show the databases in the MySQL server. Write a SQL code inside MySQL Workbench SQL editor to show all your databases in the MySQL server. Check if the Little Lemon database is included in the list.
  
- You need to create a new branch and commit the changes to Git.
  
- You should now push and pull the changes to the GitHub repository.

## Task 2 :

- Scenario

> Little Lemon needs to retrieve data from their database. You can use your knowledge of MySQL to help them. As part of this task, you need to:

> 1. Create a virtual table to summarize data.

> 2. Use a JOIN statement to query data from multiple tables.

> 3. Create a SQL statement with a subquery.

> 4. Creating optimized queries using stored procedures and prepared statements.

- Little Lemon needs you to create a virtual table called OrdersView that focuses on OrderID, Quantity, and Cost columns within the Orders table for all orders with a quantity greater than 2.

- Little Lemon needs information from four tables on all customers with orders that cost more than $150. Extract the required information from each of the following tables by using the relevant JOIN clause: 

> 1. Customers table: The customer ID and full name.

> 2. Orders table: The order id and cost.

> 3. Menus table: The menu's name.

> 4. MenusItems table: course name and starter name.

> 5. The result set should be sorted by the lowest cost amount.

- Little Lemon needs you to find all menu items for which more than 2 orders have been placed. You can carry out this task by creating a subquery that lists the menu names from the menus table for any order quantity with more than 2.

- Little Lemon needs you to create a Stored Procedure that displays the maximum ordered quantity in the Orders table. Creating this procedure will allow Little Lemon to reuse the logic implemented in the procedure easily without retyping the same code over again and again to check the maximum quantity. You can call the procedure "GetMaxQuantity".

- Little Lemon needs you to help them create a prepared statement called "GetOrderDetail". This prepared statement will help to reduce the parsing time of queries. It will also help to secure the database from SQL injections.

> 1. The prepared statement should accept one input argument, the CustomerID value, from a variable. 

> 2. The statement should return the order ID, the quantity, and the order cost from the Orders table. 

> 3. Once you create the prepared statement, you can create a variable called id and assign it the value of 1. 

> 4. Then execute the prepared statement "GetOrderDetail".

- Create a stored procedure called "CancelOrder". Little Lemon wants to use this stored procedure to delete an order record based on the user input of the order ID. Creating this procedure will allow Little Lemon to cancel any order by specifying the order ID value in the procedure parameter without typing the entire SQL delete statement.

## Task 3 :

- Scenario 

> Little Lemon’s data model must include a Bookings table so that they can store data for table bookings. They also need a stored procedure that checks available bookings based on user input and a MySQL transaction that can be used to cancel bookings.

> Also, They help with managing their bookings. They need you to create stored procedures that they can invoke as required to add, update, and delete bookings in their database. Use your knowledge of MySQL to help them out.

- Little Lemon wants to populate the Bookings table of their database with some records of data. Your first task is to replicate the list of records in the following table by adding them to the Little Lemon booking table. You can use simple INSERT statements to complete this task.

  ![Table](https://github.com/himanshu1295/db-capstone-project/assets/106751126/9c2e2cc8-4983-417a-be02-c797aa0c4c82)

- Little Lemon needs you to create a stored procedure called "CheckBooking" to check whether a table in the restaurant is already booked. Creating this procedure helps to minimize the effort involved in repeatedly coding the same SQL statements.

> The procedure should have two input parameters in the form of booking date and table number. You can also create a variable in the procedure to check the status of each table.

- Little Lemon needs to verify a booking and decline any reservations for tables that are already booked under another name. Since integrity is not optional, Little Lemon needs to ensure that every booking attempt includes these verification and decline steps. However, implementing these steps requires a stored procedure and a transaction.

> To implement these steps, you need to create a new procedure called "AddValidBooking". This procedure must use a transaction statement to perform a rollback if a customer reserves a table that’s already booked under another name.

- Create a new procedure called "AddBooking" to add a new table booking record. The procedure should include four input parameters in the form of the following booking parameters:

> 1. booking id,

> 2. customer id,

> 3. booking date,

> 4. table number.

- Little Lemon needs you to create a new procedure called "UpdateBooking" that they can use to update existing bookings in the booking table. The procedure should have two input parameters in the form of booking ID and booking date. You must also include an UPDATE statement inside the procedure.

- Little Lemon needs you to create a new procedure called "CancelBooking" that they can use to cancel or remove a booking. The procedure should have one input parameter in the form of a booking ID. You must also write a DELETE statement inside the procedure.

## Task 4 :

- Scenario 

> Little Lemon has an Excel sheet file with thousands of records of data on orders made between 2019 and 2023. They want to analyze the sales data to examine how they can increase their profits.

> They need you to help them to prepare the existing data before they start analyzing it.

> Then filter the data, analyze it, and create visual charts in the form of an interactive dashboard to help them understand their business performance, so they can increase their sales and profits.

- You need to connect to Little Lemon data stored in the Excel Sheet. Then filter data in the data source page and select the "United States" as the country.

- You need to create two new data fields called "First Name" and "Last Name". Related values should be extracted from the Full Name field.

- Create a new data field that stores the profits for each sale, or order as shown in the screenshot below :

  ![image](https://github.com/himanshu1295/db-capstone-project/assets/106751126/427a40f4-417d-47ce-ab90-2d2c5518133f)

- Create a bar chart that shows customers' sales and filter data based on sales with at least $70. Name the chart "Customers Sales". If you roll over a bar, the customer names and sale figures should be displayed as shown below :

  ![image](https://github.com/himanshu1295/db-capstone-project/assets/106751126/84f3a91a-33c6-47c3-8657-9542b1b20955)

- You need to create a line chart to show the sales trend from 2019 to 2022. Name the chart "Profit Chart". Your chart should show the trend of sales from 2019 to 2022 only as shown below :

  ![image](https://github.com/himanshu1295/db-capstone-project/assets/106751126/1e62361b-0a85-446d-b669-b8c633fd4592)

- You need to create a Bubble chart of sales for all customers. The chart should show the names of all customers. Once you roll over a bubble, the chart should show the name, profit, and sale. Name the chart "Sales Bubble Chart". Your chart should show the following Bubble chart :

  ![image](https://github.com/himanshu1295/db-capstone-project/assets/106751126/cc94b0c8-c7b8-48ad-adfc-4ea53e0a65e6)

- You need to compare the sales of the three different cuisines sold at Little Lemon. Create a Bar chart that shows the sales of the Turkish, Italian, and Greek cuisines. You need to display sales data for 2020, 2021, and 2022 only. Each bar should display the profit of each cuisine. Name the worksheet Cuisine Sales and Profits. Your chart should be similar to the following example :

  ![image](https://github.com/himanshu1295/db-capstone-project/assets/106751126/9c0f45b5-413b-4511-99ff-246bedf0c457)

- You need to create an interactive dashboard that combines the Bar chart called Customer sales and the Sales Bubble Chart. Once you click a bar, and roll over the related bubble, the name, sales, and profit figures should be displayed in the Bubble chart as shown below :

  ![image](https://github.com/himanshu1295/db-capstone-project/assets/106751126/b733638f-97d0-42a3-b940-c450aa558c28)

## Task 5 :

- Scenario

> Little Lemon needs you to help them build a functional Booking System from which they can manage their customer data. An integral part of a well-functioning system is the ability to query data. Little Lemon needs you to help them add the search functionality required to query their data. 

- Establish a connection between Python and your database using the following steps:

  > Have an up-to-date version of Python installed on your machine and then install Jupyter.
  
  > Once Jupyter is installed, you can open a notebook.
  
  > Ensure that mysql-connector is installed.
  
  > Import the connector under the alias connector.
  
  > Verify that a connection can be made with your database by calling the connection method from the connector class.

- You now need to query the database to show all tables within the database.

- Query with table JOIN. Little Lemon needs you to return specific details from your database. They require the full name, contact details, and bill amount of every customer who has placed an order greater than $60 for a promotional campaign.
