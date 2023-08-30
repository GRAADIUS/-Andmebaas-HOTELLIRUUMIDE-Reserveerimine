create table room_type(
	room_type_ID int primary key identity(1,1),
	description_ varchar(80),
	max_capacity int
);

create table guest(
	guest_ID int primary key identity(1,1),
	first_name varchar(10),
	last_name varchar(40) NULL,
	mumber_since date
);


create table reservation(
	reservation_ID int primary key identity(1,1),
	date_in date,
	date_out date,
	made_by varchar(20),
	guest_ID int,
    FOREIGN KEY (guest_ID) REFERENCES guest(guest_ID)
);

create table room(
	room_ID int primary key identity(1,1),
	number varchar(10),
	name_ varchar(40),
	status_ varchar(10),
	smoke bit,
	room_type_ID int,
    FOREIGN KEY (room_type_ID) REFERENCES room_type(room_type_ID)
);

create table reserved_room(
	reserved_room_ID int primary key identity(1,1),
	number_of_rooms int,
	status_ varchar(20),
	room_type_ID int,
	reservation_ID int,
    FOREIGN KEY (room_type_ID) REFERENCES room_type(room_type_ID),
    FOREIGN KEY (reservation_ID) REFERENCES reservation(reservation_ID)
);

create table occupled_room(
	occupled_room_ID int primary key identity(1,1),
	check_in date,
	check_out date,
	status_ varchar(20),
	room_ID int,
	reservation_ID int,
    FOREIGN KEY (room_ID) REFERENCES room(room_ID),
    FOREIGN KEY (reservation_ID) REFERENCES reservation(reservation_ID)
);

create table hostel_at(
	hostel_at_ID int primary key identity(1,1),
	guest_ID int,
	occupled_room_ID int,
    FOREIGN KEY (guest_ID) REFERENCES guest(guest_ID),
    FOREIGN KEY (occupled_room_ID) REFERENCES occupled_room(occupled_room_ID)
);