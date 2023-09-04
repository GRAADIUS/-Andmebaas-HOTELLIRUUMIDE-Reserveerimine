---protseduurid guest
--andmete lisamine ja select
CREATE PROCEDURE insert_
    @LastName varchar(100),   
    @FirstName varchar(100),
	@mumber_since date
AS   
begin
	INSERT INTO guest (first_name, last_name, mumber_since) VALUES (@FirstName, @LastName, @mumber_since);
	select * from guest;
end;
exec insert_ 'Frank', 'Bomb', '3023-12-23'
--kasutamine ja select
CREATE PROCEDURE delete_
    @id int
AS   
begin
	select * from guest;
	delete from guest where guest_id = @id
	select * from guest;
end;
exec delete_ 3;
--andmete uuendamine sisestatud id järgi
CREATE PROCEDURE update_
    @id int,
	@LastName varchar(100),   
    @FirstName varchar(100),
	@mumber_since date
AS   
begin
	select * from guest;
	update guest set first_name = @FirstName, last_name = @LastName, mumber_since = @mumber_since where guest_id = @id
	select * from guest;
	select * from logi;
end;
exec update_ 4, 'ghfds', 'jhgf', '3333-02-12';
--kasutajate (guest) arvu leidmine

--?oma?
