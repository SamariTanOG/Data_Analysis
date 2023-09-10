use vehicle_3143;    
-- vehicle_3143 is the name of the schema


SELECT Lat, Longs, Dates
FROM vehicle_3143.vehicle_3143
WHERE (Dates, Time) IN (
    SELECT Dates, MIN(Time)
    FROM vehicle_3143.vehicle_3143
    GROUP BY Dates
    UNION
    SELECT Dates, MAX(Time)
    FROM vehicle_3143.vehicle_3143
    GROUP BY Dates
    );
    
SELECT distinct(Dates) FROM vehicle_3143.vehicle_5339;


SELECT Lat, Longs, Dates
FROM vehicle_3143.vehicle_1995
WHERE (Dates, Time) IN (
    SELECT Dates, MIN(Time)
    FROM vehicle_3143.vehicle_1995
    GROUP BY Dates
    UNION
    SELECT Dates, MAX(Time)
    FROM vehicle_3143.vehicle_1995
    GROUP BY Dates
    );



SELECT Lat, Longs, Dates
FROM vehicle_3143.vehicle_805
WHERE (Dates, Time) IN (
    SELECT Dates, MIN(Time)
    FROM vehicle_3143.vehicle_805
    GROUP BY Dates
    UNION
    SELECT Dates, MAX(Time)
    FROM vehicle_3143.vehicle_805
    GROUP BY Dates
    );
    
    
SELECT Lat, Longs, Dates
FROM vehicle_3143.vehicle_2846
WHERE (Dates, Time) IN (
    SELECT Dates, MIN(Time)
    FROM vehicle_3143.vehicle_2846
    GROUP BY Dates
    UNION
    SELECT Dates, MAX(Time)
    FROM vehicle_3143.vehicle_2846
    GROUP BY Dates
    );
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    select * from vehicle_3143.vehicle_1995 ;
    select count(alert) from vehicle_3143.vehicle_1995 group by Dates;
    select count(alert) from vehicle_3143.vehicle_5339 group by Dates;
    select count(alert) from vehicle_3143.vehicle_805 group by Dates;
    select count(alert) from vehicle_3143.vehicle_3143vehicle_1995 group by Dates;
    SELECT Dates, (
    SELECT COUNT(alert)
    FROM vehicle_3143.vehicle_5339 AS subquery
    WHERE subquery.Dates = main.Dates AND subquery.alert > 70
) AS alert_count
FROM vehicle_3143.vehicle_5339 AS main
GROUP BY Dates;

    