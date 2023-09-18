-- Task 1
-- Little Lemon wants to populate the Bookings table of their database with some records of data. 

INSERT INTO Bookings (`BookingID`, `BookingDate`, `TableNumber`, `CustomerID`) VALUES ('1', '2022-10-10', '5', '1');
INSERT INTO Bookings (`BookingID`, `BookingDate`, `TableNumber`, `CustomerID`) VALUES ('2', '2022-11-12', '3', '3');
INSERT INTO Bookings (`BookingID`, `BookingDate`, `TableNumber`, `CustomerID`) VALUES ('3', '2022-10-11', '2', '2');
INSERT INTO Bookings (`BookingID`, `BookingDate`, `TableNumber`, `CustomerID`) VALUES ('4', '2022-10-13', '2', '1');

SELECT * FROM Bookings;