create trigger room_insert
on room
for insert
as
INSERT INTO logi(kuupaev, kasutaja, andmed, tegevus)
select GETDATE(), USER, 
        concat(inserted.number, ', ', inserted.name_, ', ', inserted.status_, ', ', inserted.smoke), 
        'guest on lisanud'
from inserted
--control
INSERT INTO room (number, name_, status_, smoke) VALUES ('245', 'Fran', 'hõivatud', 1);
select * from room;
select * from logi
---------------------------------------------------
create trigger room_delete
on room
for delete
as
INSERT INTO logi(kuupaev, kasutaja, andmed, tegevus)
select GETDATE(), USER, 
        concat(deleted.number, ', ', deleted.name_, ', ', deleted.status_, ', ', deleted.smoke), 
        'guest on kasutatud'
from deleted
--control
delete from room where room_id = 1;
select * from room;
select * from logi;
-------------------------------------------------------
create trigger room_update
on room
for update
as
INSERT INTO logi(kuupaev, kasutaja, andmed, tegevus)
select GETDATE(), USER, 
        concat('vanad: ', deleted.number, ', ', deleted.name_, ', ', deleted.status_, ', ', deleted.smoke, ', ', 'uued: ', inserted.number, ', ', inserted.name_, ', ', inserted.status_, ', ', inserted.smoke, ', '), 
        'guest on kasutatud'
from deleted inner join inserted
on deleted.room_id=inserted.room_id

--control
select * from room;
update room set number = '120' where room_id = 2
select * from room;
select * from logi;
