-- Task 3
-- Little Lemon need you to create a new procedure called CancelBooking 
-- that they can use to cancel or remove a booking.

-- The procedure should have one input parameter in the form of booking id. 
-- You must also write a DELETE statement inside the procedure. 

DELIMITER //

CREATE PROCEDURE CancelBooking(IN Booking_id INT)
BEGIN
    DELETE FROM Bookings WHERE BookingID = Booking_id;
    SELECT CONCAT("Booking ", Booking_id, " cancelled") AS "Confirmation";
END //
DELIMITER ;

CALL CancelBooking(5);
