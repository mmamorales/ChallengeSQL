/*no usa tablas*/

/*query que resuelve el problema*/
create procedure GetDayW @date date
as
select datename(WEEKDAY,@date) semana
go

exec GetDayW @date= '02/02/2022'

GO
DROP procedure GetDayW