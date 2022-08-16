BEGIN 
IF NOT EXISTS (SELECT * FROM sysobjects WHERE name = 'cyclistic_all' AND xtype = 'U')
	CREATE TABLE cyclistic_all (
		ride_id varchar(250),
		rideable_type varchar(250),
		started_at varchar(250),
		ended_at varchar(250),
		start_station_name varchar(250),
		start_station_id varchar(250),
		end_station_name varchar(250),
		end_station_id varchar(250),
		start_lat varchar(250),
		start_lng varchar(250),
		end_lat varchar(250),
		end_lng varchar(250),
		member_casual varchar(250)
	);
END

USE cyclistic
GO

SELECT * INTO cyclistic_copy 
FROM cyclistic_all

SELECT TOP 10 *
FROM cyclistic_copy


--standarize data types
 
ALTER TABLE cyclistic_copy ALTER COLUMN rideable_type varchar(20)
ALTER TABLE cyclistic_copy ALTER COLUMN started_at datetime
ALTER TABLE cyclistic_copy ALTER COLUMN ended_at datetime
ALTER TABLE cyclistic_copy ALTER COLUMN start_station_name varchar(150)
ALTER TABLE cyclistic_copy ALTER COLUMN start_station_id varchar(150)
ALTER TABLE cyclistic_copy ALTER COLUMN end_station_name varchar(150)
ALTER TABLE cyclistic_copy ALTER COLUMN end_station_id varchar(150)
ALTER TABLE cyclistic_copy ALTER COLUMN start_lat float
ALTER TABLE cyclistic_copy ALTER COLUMN start_lng float
ALTER TABLE cyclistic_copy ALTER COLUMN end_lat float
ALTER TABLE cyclistic_copy ALTER COLUMN end_lng float
ALTER TABLE cyclistic_copy ALTER COLUMN member_casual varchar(15)


--add "ride_lenght" and "day_of_week"
BEGIN TRANSACTION 
ALTER TABLE cyclistic_copy ADD "ride_lenght" time
ALTER TABLE cyclistic_copy ADD "day_of_week" varchar(15)
COMMIT TRANSACTION;

BEGIN
	UPDATE cyclistic_copy SET ride_lenght = CAST((ended_at - started_at) as time(0))
	UPDATE cyclistic_copy SET day_of_week = DATENAME(weekday, started_at)
END

--check spelling and typos,values out of range
SELECT rideable_type
FROM cyclistic_copy
GROUP BY rideable_type
HAVING rideable_type NOT IN('classic_bike', 'docked_bike', 'electric_bike')

SELECT start_station_name
FROM cyclistic_copy
GROUP BY start_station_name
ORDER BY start_station_name ASC

SELECT end_station_name
FROM cyclistic_copy
GROUP BY end_station_name
ORDER BY end_station_name ASC

SELECT member_casual
FROM cyclistic_copy
GROUP BY member_casual
HAVING member_casual NOT IN('member', 'casual')

SELECT day_of_week
FROM cyclistic_copy
GROUP BY day_of_week



--remove duplicates
SELECT ride_id, COUNT(*)
FROM cyclistic_copy
GROUP BY ride_id
HAVING COUNT(*) > 1

SELECT start_station_name, 
	   start_station_id, 
	   COUNT(*)
FROM cyclistic_copy
GROUP BY start_station_name, 
		 start_station_id
ORDER BY start_station_name ASC

SELECT COUNT(DISTINCT(start_station_name))
FROM cyclistic_copy

SELECT COUNT(DISTINCT(end_station_name))
FROM cyclistic_copy


--nulls or ' '

SELECT start_station_name, 
	   start_station_id, 
	   COUNT(*)
FROM cyclistic_copy
GROUP BY start_station_name, 
		 start_station_id
HAVING start_station_name IS NULL AND start_station_id IS NULL


SELECT end_station_name, 
	   end_station_id, 
	   COUNT(*)
FROM cyclistic_copy
GROUP BY end_station_name, 
	     end_station_id
HAVING end_station_name IS NULL AND end_station_id IS NULL

SELECT start_station_name, 
	   start_station_id, 
	   end_station_name, 
	   end_station_id, 
	   COUNT(*)
FROM cyclistic_copy
WHERE start_station_name IS NULL AND start_station_id IS NULL AND end_station_name IS NULL AND end_station_id IS NULL
GROUP BY start_station_name, start_station_id, end_station_name, end_station_id

--Analysis
SELECT COUNT(*)
FROM cyclistic_copy

SELECT DISTINCT(ride_id)
FROM cyclistic_copy

--rideable type / member_casual
SELECT rideable_type, COUNT(*) AS count
FROM cyclistic_copy
GROUP BY rideable_type

SELECT rideable_type, member_casual, COUNT(*)
FROM cyclistic_copy
GROUP BY rideable_type, member_casual
ORDER BY member_casual

--monthly activity

SELECT YEAR(started_at) AS year, MONTH(started_at) as month ,COUNT(ride_id) as total
FROM cyclistic_copy
GROUP BY YEAR(started_at), MONTH(started_at)
ORDER BY YEAR(started_at), MONTH(started_at)

--month and member_type

SELECT YEAR(started_at) AS year, MONTH(started_at) as month, member_casual, COUNT(ride_id) AS total
FROM cyclistic_copy
GROUP BY YEAR(started_at), MONTH(started_at), member_casual
ORDER BY YEAR(started_at), MONTH(started_at), member_casual

--filter per day of week

SELECT day_of_week, member_casual, COUNT(*) days
FROM  cyclistic_copy
GROUP BY day_of_week, member_casual
ORDER BY member_casual ASC

--member type
SELECT member_casual, 
	   COUNT(*) AS count
FROM cyclistic_copy
GROUP BY member_casual

--avg ride lenght
SELECT CAST(CAST(AVG(CAST(CAST(ride_lenght AS datetime) AS float)) AS datetime) AS time) AvgTime
FROM cyclistic_copy

SELECT member_casual, 
	   CAST(CAST(AVG(CAST(CAST(ride_lenght AS datetime) AS float)) AS datetime) AS time) AvgTime
FROM cyclistic_copy
GROUP BY member_casual


