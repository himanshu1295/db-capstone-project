-- Task 2
-- For your second task, Little Lemon need you to create a new procedure called UpdateBooking 
-- that they can use to update existing bookings in the booking table.

-- The procedure should have two input parameters in the form of booking id and booking date. 
-- You must also include an UPDATE statement inside the procedure. 

DELIMITER //

CREATE PROCEDURE UpdateBooking(IN Booking_id INT, IN Booking_Date DATETIME)
BEGIN
UPDATE Bookings SET BookingDate = Booking_Date
WHERE BookingID = Booking_id;
SELECT CONCAT("Booking ", Booking_id, " updated") AS "Confirmation";
END //
DELIMITER ;

CALL UpdateBooking(5, "2022-12-17")
