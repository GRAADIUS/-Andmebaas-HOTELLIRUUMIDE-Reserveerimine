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
