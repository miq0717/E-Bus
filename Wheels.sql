CREATE TABLE ROUTENAME
(
RouteID	int NOT NULL IDENTITY(1,1) PRIMARY KEY,
SourceName varchar(50) NOT NULL,
Destination varchar(50) NOT NULL,
)
CREATE TABLE BUSINFO
(
BusID int NOT NULL IDENTITY(1,1) PRIMARY KEY,
BusCompany varchar(50) NOT NULL,
CoachNo varchar(7) NOT NULL,
BusType varchar(7) NOT NULL,
RouteID int NOT NULL FOREIGN KEY REFERENCES ROUTENAME(RouteID)
)
CREATE TABLE SCHEDULE
(
ScheduleID int NOT NULL IDENTITY(1,1) PRIMARY KEY,
DepartureTime varchar(10) NOT NULL,
ArrivalTime varchar(10) NOT NULL,
DateofJourney varchar(50) NOT NULL,
BusID int NOT NULL FOREIGN KEY REFERENCES BUSINFO(BusID)
)
CREATE TABLE SEAT
(
SeatID int NOT NULL IDENTITY(1,1) PRIMARY KEY,
SeatNo varchar(2) NOT NULL,
)
CREATE TABLE PASSENGER
(
PassengerID int NOT NULL IDENTITY(1,1) PRIMARY KEY,
PassengerName varchar(50) NOT NULL,
Gender varchar(6) NOT NULL,
ContactNo varchar(11) NOT NULL,
EmailAdress varchar(20) NULL,
)
CREATE TABLE BOOKINGINFO
(
BookingID int NOT NULL IDENTITY(1,1) PRIMARY KEY,
ScheduleID int NOT NULL FOREIGN KEY REFERENCES SCHEDULE(ScheduleID),
PassengerID int NOT NULL FOREIGN KEY REFERENCES PASSENGER(PassengerID),
SeatID int NOT NULL FOREIGN KEY REFERENCES SEAT(SeatID)
)

CREATE TABLE Admin
(
AdminID	int NOT NULL IDENTITY(1,1) PRIMARY KEY,
Name varchar(50) NOT NULL,
Address varchar(50) NOT NULL,
Phone varchar(50) NOT NULL,
Email varchar(50) NOT NULL,
Password varchar(50) NOT NULL,
)