--------------guest-------------------------------------------
INSERT INTO guest (first_name, last_name, mumber_since) VALUES ('Alex', 'Farkua', '2023-08-31');
INSERT INTO guest (first_name, last_name, mumber_since) VALUES ('Leon', 'Frion', '2023-08-31');
INSERT INTO guest (first_name, last_name, mumber_since) VALUES ('Markus', 'Barkus', '2023-08-31');
INSERT INTO guest (first_name, last_name, mumber_since) VALUES ('Frank', 'Prank', '2023-08-31');
INSERT INTO guest (first_name, last_name, mumber_since) VALUES ('Dio', 'JOJO', '2023-08-31');

----------------room_type-----------------------------------

INSERT INTO room_type(description_, max_capacity) VALUES ('palju kirjutisi, mida ma olen liiga laisk üles kirjutama', 2);
INSERT INTO room_type(description_, max_capacity) VALUES ('palju kirjutisi, mida ma olen liiga laisk üles kirjutama', 5);
INSERT INTO room_type(description_, max_capacity) VALUES ('palju kirjutisi, mida ma olen liiga laisk üles kirjutama', 1);
INSERT INTO room_type(description_, max_capacity) VALUES ('palju kirjutisi, mida ma olen liiga laisk üles kirjutama', 3);
INSERT INTO room_type(description_, max_capacity) VALUES ('palju kirjutisi, mida ma olen liiga laisk üles kirjutama', 2);

------------------room----------------------------------

INSERT INTO room(number, name_, status_, smoke) VALUES ('34', 'mis on toa nimi', 'tasuta', 1);
INSERT INTO room(number, name_, status_, smoke) VALUES ('35', 'mis on toa nimi', 'hõivatud', 0);
INSERT INTO room(number, name_, status_, smoke) VALUES ('36', 'mis on toa nimi', 'tasuta', 1);
INSERT INTO room(number, name_, status_, smoke) VALUES ('37', 'mis on toa nimi', 'tasuta', 0);
INSERT INTO room(number, name_, status_, smoke) VALUES ('38', 'mis on toa nimi', 'hõivatud', 1);

----------------reservation------------------------------------

INSERT INTO reservation(date_in, date_out, made_by) VALUES ('2023-08-30', '2023-08-31', 'tundmatu väli');
INSERT INTO reservation(date_in, date_out, made_by) VALUES ('2023-08-31', '2023-09-01', 'tundmatu väli');
INSERT INTO reservation(date_in, date_out, made_by) VALUES ('2023-08-20', '2023-08-21', 'tundmatu väli');
INSERT INTO reservation(date_in, date_out, made_by) VALUES ('2023-08-25', '2023-08-26', 'tundmatu väli');
INSERT INTO reservation(date_in, date_out, made_by) VALUES ('2023-08-12', '2023-08-13', 'tundmatu väli');

-------------------reserved_room---------------------------

INSERT INTO reserved_room(number_of_rooms, status_) VALUES (34, 'tasuta');
INSERT INTO reserved_room(number_of_rooms, status_) VALUES (35, 'hõivatud');
INSERT INTO reserved_room(number_of_rooms, status_) VALUES (36, 'tasuta');
INSERT INTO reserved_room(number_of_rooms, status_) VALUES (37, 'tasuta');
INSERT INTO reserved_room(number_of_rooms, status_) VALUES (38, 'hõivatud');

---------------------occupled_room-------------------------------

INSERT INTO occupled_room(check_in, check_out) VALUES ('2023-08-31', '2023-09-01');
INSERT INTO occupled_room(check_in, check_out) VALUES ('2023-09-01', '2023-09-03');
INSERT INTO occupled_room(check_in, check_out) VALUES ('2023-08-21', '2023-08-23');
INSERT INTO occupled_room(check_in, check_out) VALUES ('2023-08-26', '2023-08-28');
INSERT INTO occupled_room(check_in, check_out) VALUES ('2023-08-13', '2023-08-15');