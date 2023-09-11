-----------------Kasutasin kahte lauda, Guest ja Reservated-----------------------------
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


create trigger guest_reservation
on reservation
for insert
as
INSERT INTO logi(kuupaev, kasutaja, andmed)
select GETDATE(), USER, 
        concat(inserted.date_in, ', ', inserted.date_out, ', ', inserted.made_by, ', ', m.guest_ID)
from reservation
inner join guest g on inserted.guest_ID = m.guest_ID
