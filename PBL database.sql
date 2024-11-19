use pbl;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(20) NOT NULL,
    email VARCHAR(50) NOT NULL,
    mobile VARCHAR(10) NOT NULL,
    password VARCHAR(255) NOT NULL
);

select * from users;
show tables;

CREATE TABLE events (
    id INT AUTO_INCREMENT PRIMARY KEY,
    event_name VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    event_date DATE NOT NULL,
    location VARCHAR(255) NOT NULL,
    organisation_id VARCHAR(255) NOT NULL,
    action ENUM('update', 'delete') NOT NULL
);

select * from events;

ALTER TABLE users ADD COLUMN profile_pic BLOB;

delete from users where id = 5;

update users set id = 2  where id = 4;

delete from events where id = 2;

ALTER TABLE events
RENAME COLUMN organisation_id to representative_id;

CREATE TABLE representative (
    representative_id INT PRIMARY KEY,
    representative_name VARCHAR(100),
    ngo_name VARCHAR(100)
);

select * from representative;

insert into representative values(555, 'Test1', 'Test NGO');

CREATE TABLE event_bookings (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    mobile_number VARCHAR(10) NOT NULL,
    age INT NOT NULL,
    gender VARCHAR(10) NOT NULL,
    event VARCHAR(255) NOT NULL
);

select * from event_bookings;

CREATE TABLE ngo_registrations (
    id INT AUTO_INCREMENT PRIMARY KEY,
    organisation_id VARCHAR(255) NOT NULL,
    ngo_name VARCHAR(255) NOT NULL,
    contact_number VARCHAR(10) NOT NULL,
    address TEXT NOT NULL
);

select * from ngo_registrations;

delete from users where id =2;

show tables;

select * from event_bookings;
select * from events;
select * from ngo_registrations;
select * from representative;
select * from users;

truncate users;
alter table users
drop profile_pic;
truncate ngo_registrations;
truncate events;
truncate event_bookings;
