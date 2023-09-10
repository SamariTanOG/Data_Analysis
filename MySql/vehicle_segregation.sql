show databases;
create database intel;
use intel;
drop database intel;
use intel;
desc cleaned_revised;
drop table cleaned_revised;
select distinct(vehicle) from intel.cleaned_revised ;
create table vehicle1(
alert text,
Dates text,
Time text,
Lat double,
longs double,
vehicle int,
Speed int);

select * from intel.cleaned_revised ;


select distinct vehicle from intel.cleaned_revised ;
select count(*) from intel.cleaned_revised where vehicle=1995;
select * from intel.cleaned_revised where Vehicle=2846 and Speed>60;
insert into vehicle1 where vehicle1values=(select * from intel.cleaned_revised where Vehicle=2846);

INSERT INTO vehicle1 (Alert, Dates, Time, Lat, Longs, Vehicle, Speed) -- Specify the columns you're inserting into
SELECT Alert, Dates, Time, Lat, Longs, Vehicle, Speed -- Specify the columns you're selecting from intel.cleaned_revised
FROM intel.cleaned_revised
WHERE Vehicle = 2846;


select * from intel.vehicle_5339;

SELECT Lat, Longs, Dates
FROM intel.vehicle_5339
WHERE (Dates, Time) IN (
    SELECT Dates, MIN(Time)
    FROM intel.vehicle_5339
    GROUP BY Dates
    UNION
    SELECT Dates, MAX(Time)
    FROM intel.vehicle_5339
    GROUP BY Dates
);


SELECT COUNT(alert) AS alert_count, Dates, Vehicle
FROM intel.cleaned_revised
WHERE (Dates, Speed) IN (
    SELECT Dates, Speed
    FROM intel.cleaned_revised
    WHERE Speed > 50
)
GROUP BY Dates,Vehicle ;

SELECT COUNT(alert) AS alert_count, Dates, Vehicle
FROM intel.cleaned_revised
WHERE (Speed, Vehicle) IN (
    SELECT Speed, Vehicle
    FROM intel.cleaned_revised
    WHERE Speed > 50
)
GROUP BY Dates, Vehicle;
select * from intel.cleaned_revised where Vehicle=1995;
