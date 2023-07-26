create database gans;
-- DROP DATABASE gans;
use gans;
drop table cities; 
create table if not exists cities (
	city_id INT AUTO_INCREMENT,
    city VARCHAR(50),
    country VARCHAR(50),
    population INT,
    latitude DOUBLE,
    longitude DOUBLE,
	PRIMARY KEY(city_id)
);
select * from cities;


-- CREATE TABLE IF NOT EXISTS population (
	city_id INT,
    population INT,
    timestamp_population YEAR,
    PRIMARY KEY(city_id),
    FOREIGN KEY(city_id) REFERENCES cities(city_id)
);
 
CREATE TABLE IF NOT EXISTS airports (
	icao VARCHAR(25),
    airport_name VARCHAR(200),
    country_code VARCHAR(25),
    latitude DOUBLE,
    longitude DOUBLE,
    PRIMARY KEY (icao)
);
select * from airports;

-- drop table cities_airports;
create table if not exists cities_airports (
	city_id int, 
    icao varchar(25),
    foreign key (city_id) references cities(city_id),
    foreign key (icao) references airports(icao),
    primary key (city_id, icao)
);
insert into cities_airports(city_id, icao) 
values
(1, "EDDB"),
(2, "EDDH"),
(3, "EDDF"),
(4, "EDDM"),
(5, "EDDS"),
(6, "EDDK"),
(7, "EDDV");

select * from cities_airports;

-- drop table weather;
CREATE TABLE IF NOT EXISTS weather (
	id INT AUTO_INCREMENT,
    city_id INT,
    country_code VARCHAR(25),
    forecast_time DATETIME,
    outlook VARCHAR(200),
    weather_description VARCHAR(200),
    temperature float,
    feels_like float,
    risk_of_rain float,
    rain float,
    snow float,
    wind_speed float,
    humidity int,
    information_retrieved_at DATETIME,
	PRIMARY KEY(id),
    FOREIGN KEY(city_id) REFERENCES cities(city_id)
);

select * from weather;


-- drop table flights;
CREATE TABLE IF NOT EXISTS flights (
	flight_id INT AUTO_INCREMENT,
	arrival_icao VARCHAR(25),
    flight_num VARCHAR(25),
    arrival_time DATETIME, 
    arrival_terminal VARCHAR(25),
    departure_city VARCHAR(25),
    departure_icao VARCHAR(25),
    data_retrieved_on DATETIME,
    PRIMARY KEY (flight_id),
    FOREIGN KEY (arrival_icao) REFERENCES airports(icao)
);

select * from flights;