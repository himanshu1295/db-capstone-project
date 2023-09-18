-- Task 3
-- Little Lemon need to verify a booking, and decline any reservations for tables that are already booked under another name. 

-- Since integrity is not optional, Little Lemon need to ensure that every booking attempt includes these verification and decline steps. 
-- However, implementing these steps requires a stored procedure and a transaction. 

-- To implement these steps, you need to create a new procedure called AddValidBooking. 
-- This procedure must use a transaction statement to perform a rollback if a customer reserves a table that’s already booked under another name.  

-- Use the following guidelines to complete this task:
-- The procedure should include two input parameters in the form of booking date and table number.
-- It also requires at least one variable and should begin with a START TRANSACTION statement.
-- Your INSERT statement must add a new booking record using the input parameter's values.
-- Use an IF ELSE statement to check if a table is already booked on the given date. 
-- If the table is already booked, then rollback the transaction. If the table is available, then commit the transaction.

DELIMITER //

CREATE PROCEDURE AddValidBooking(
    IN Booking_Date DATETIME,
    IN Table_Number INT
)
BEGIN
    DECLARE bookingExists INT DEFAULT 0;
    
    START TRANSACTION;

    -- Check if the table is already booked on the given date
    SELECT COUNT(*) INTO bookingExists
    FROM Bookings
    WHERE BookingDate = Booking_Date AND TableNumber = Table_Number;

    IF bookingExists > 0 THEN
        -- Table is already booked, rollback the transaction
        ROLLBACK;
        SELECT CONCAT('Table ', Table_Number, ' is already booked - booking cancelled') AS "Booking Status";
    ELSE
        -- Table is available, add the new booking
        INSERT INTO Bookings (BookingDate, TableNumber)
        VALUES (Booking_Date, Table_Number);
        COMMIT;
        SELECT 'Booking successful' AS "Booking Status";
    END IF;
END//

DELIMITER ;

CALL AddValidBooking("2022-10-10", 5);