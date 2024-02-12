
go
use dpms 
go
alter table f1.managers
add  salary int not null;
alter table f1.managers
add status varchar( 12);
alter table f1.managers
ADD CONSTRAINT ConstraintName UNIQUE (salary);
alter table f1.managers
ADD CONSTRAINT ConstraintName primary key (Id);



insert into f1.managers ( id ,Email,Phone_number,salary,status ) values ( 10, N'ibrahimsalman277',N'01009231462',1000,N'Single'); 
alter table f1.managers
ADD CONSTRAINT ConstraintName UNIQUE (Email);

alter table f1.managers
drop CONSTRAINT status ;
 
insert into f1.managers ( id ,Email,Phone_number,salary,status ) values ( 1 , N'ibrahimsalmans277',N'01009231462',10020,N'Single'); 
go

select * from f1.managers ;

select *from f1.managers  where Email = 'ibrahimsalman277' and salary = 1000

