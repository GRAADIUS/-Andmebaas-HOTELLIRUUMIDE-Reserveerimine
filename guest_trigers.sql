create trigger guest_insert
on guest
for insert
as
INSERT INTO logi(kuupaev, kasutaja, andmed, tegevus)
select GETDATE(), USER, 
        concat(inserted.last_name, ', ', inserted.first_name, ', ', inserted.mumber_since), 
        'guest on lisanud'
from inserted
--control
INSERT INTO guest (first_name, last_name, mumber_since) VALUES ('Dio', 'JOJO', '2023-08-31');
select * from guest;
select * from logi
---------------------------------------------------
create trigger guest_delete
on guest
for delete
as
INSERT INTO logi(kuupaev, kasutaja, andmed, tegevus)
select GETDATE(), USER, 
        concat(deleted.last_name, ', ', deleted.first_name, ', ', deleted.mumber_since), 
        'guest on kasutatud'
from deleted
--control
delete from guest where guest_id = 2;
select * from guest;
select * from logi;
-------------------------------------------------------
create trigger guest_update
on guest
for update
as
INSERT INTO logi(kuupaev, kasutaja, andmed, tegevus)
select GETDATE(), USER, 
        concat('vanad: ', deleted.first_name, ', ', deleted.last_name, ', ', deleted.mumber_since, ', ', 'uued: ', inserted.first_name, ', ', inserted.last_name, ', ', inserted.mumber_since, ', '), 
        'guest on kasutatud'
from deleted inner join inserted
on deleted.guest_id=inserted.guest_id
--control
select * from guest;
update guest set first_name = 'Lica' where guest_id = 3
select * from guest;
select * from logi;
