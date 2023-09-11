CREATE TRIGGER guest_reservation
ON reservation
FOR INSERT
AS
INSERT INTO logi(kuupaev, kasutaja, andmed)
SELECT GETDATE(), USER, 
    CONCAT(INSERTED.date_in, ', ', INSERTED.date_out, ', ', INSERTED.made_by, ', ', g.first_name, ', ', g.last_name, ', ', g.mumber_since)
FROM inserted
INNER JOIN guest g ON INSERTED.guest_ID = g.guest_ID;

----------------------------------------------------------

create trigger reservation_update
on reservation
for update
as
INSERT INTO logi(kuupaev, kasutaja, andmed)
select GETDATE(), USER, 
        concat('Vanad: ', deleted.date_in, ', ', deleted.date_out, ', ', deleted.made_by, ', ', g1.first_name, ', ', g1.last_name, ', ', g1.mumber_since, '. ', 'Uued: ', INSERTED.date_in, ', ', INSERTED.date_out, ', ', INSERTED.made_by, ', ', g2.first_name, ', ', g2.last_name, ', ', g2.mumber_since, '.')
from deleted
inner join inserted on deleted.reservation_ID = inserted.reservation_ID
inner join guest g1 on deleted.guest_ID = g1.guest_ID
inner join guest g2 on inserted.guest_ID = g2.guest_ID
