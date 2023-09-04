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
delete from guest where guest_id = 1;
select * from guest;
select * from logi;
