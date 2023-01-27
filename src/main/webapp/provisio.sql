

/* Team Two
SQL Insert Statements
January 21, 2023

To start the mysql server run this on your terminal
mysql -u root -p */


-- drop database
DROP DATABASE provisio;

-- show databases
SHOW DATABASES;

-- create whatabook database
CREATE DATABASE provisio;

-- activate database
USE provisio;


-- drop test user if exists 
DROP USER IF EXISTS 'provisio_user'@'localhost';

-- Create whatabook_user and grant them all privileges to the whatabook database 
CREATE USER 'provisio_user'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';

-- Grant all privileges to the whatabook database to user whatabook_user on localhost 
GRANT ALL PRIVILEGES ON provisio.* TO'provisio_user'@'localhost';

FLUSH PRIVILEGES;

USE provisio;

-- DROP TABLES IF THEY EXISTS
DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS hotel;
DROP TABLE IF EXISTS place;
DROP TABLE IF EXISTS reservation;

DROP TABLE IF EXISTS history;


-- CREATE USER TABLE
CREATE TABLE user (
    user_id              INT             NOT NULL        AUTO_INCREMENT,
    first_name      VARCHAR(75)     NOT NULL,
    last_name       VARCHAR(75)     NOT NULL,
    email           VARCHAR(255)    NOT NULL,
    passphrase      VARCHAR(255)    NOT NULL,
    points          INT             NOT NULL,
    PRIMARY KEY(user_id)
);
-- INSERT INTO SQL COMMANDS FOR USERS
INSERT INTO user(first_name, last_name, email, passphrase, points)
    VALUES('Darell', 'Reese', 'dreese@gmail.com', 'Python%78', 300);

INSERT INTO user(first_name, last_name, email, passphrase, points)
    VALUES('Austin', 'Powers', 'yeahbaby@hotmail.com', 'hahaYEAH!', 1200);

INSERT INTO user(first_name, last_name, email, passphrase, points)
    VALUES('Isabella', 'Holmes', 'holmesbella@icloud.com', 'Detective#700', 2560);



-- CREATE TABLE PLACE (LOCATION IS A KEYWORD IN MYSQL)

CREATE TABLE place (
    place_id        INT             NOT NULL        AUTO_INCREMENT,
    city            VARCHAR(75)     NOT NULL,
    ind_state       VARCHAR(75)     NOT NULL,
    zip             VARCHAR(255)    NOT NULL,
    picture         VARCHAR(300)    NOT NULL,
    PRIMARY KEY(place_id)
);

-- INSERT INTO PLACE TABLE

INSERT INTO place(city, ind_state, zip, picture)
    VALUES('Orlando', 'Florida', '32819', 'orlando.jpg');

INSERT INTO place(city, ind_state, zip, picture)
    VALUES('Miami', 'Florida', '33141', 'miami.jpg');

INSERT INTO place(city, ind_state, zip, picture)
    VALUES('New York', 'New York', '10011', 'newyork.jpg');


-- CREATE TABLE HOTEL

CREATE TABLE hotel (
    hotel_id        INT             NOT NULL        AUTO_INCREMENT,
    hotel_name      VARCHAR(75)     NOT NULL,
    price           INT             NOT NULL,
    descrip         VARCHAR(255)    NOT NULL,
    amenities       VARCHAR(300)    NOT NULL,
    place_id        INT             NOT NULL,
    PRIMARY KEY(hotel_id),
    FOREIGN KEY (place_id)
        REFERENCES place(place_id)
);


-- INSERT INTO SQL COMMANDS

INSERT INTO hotel(hotel_name, price, descrip, amenities, place_id)
    VALUES(
        'Old Key West', 
        500, 
        'Family fun resort style stay', 
        'Pool, Tennis, Gym, Amusement Parks, Restaurants', 
        (SELECT place_id FROM place where city = 'Orlando')
        );

INSERT INTO hotel(hotel_name, price, descrip, amenities, place_id)
    VALUES(
        'Provisio South Beach', 
        1000, 
        'Adult Hideaway', 
        'Pool, Clubs, Gym, Restaurants, Bars', 
        (SELECT place_id FROM place where city = 'Miami')
        );

INSERT INTO hotel(hotel_name, price, descrip, amenities, place_id)
    VALUES(
        'Grand Provisio', 
        2000, 
        'Executive Business Stays', 
        'Pool, Gym, Conference Areas, Restaurants, Free Wifi', 
        (SELECT place_id FROM place where city = 'New York')
        );


-- CREATE TABLE RESERVATIONS

CREATE TABLE reservation (
    reservation_id     INT             NOT NULL        AUTO_INCREMENT,
    user_id            INT             NOT NULL,
    hotel_id           INT             NOT NULL,
    place_id           INT             NOT NULL,
    adults             INT             NOT NULL,
    children           INT             NOT NULL,
    PRIMARY KEY(reservation_id),
    FOREIGN KEY (user_id)
        REFERENCES user(user_id),
    FOREIGN KEY (hotel_id)
        REFERENCES hotel(hotel_id),
    FOREIGN KEY (place_id)
        REFERENCES place(place_id)
); 

INSERT INTO reservation(user_id, hotel_id, place_id, adults, children) 
    VALUES (
        (SELECT user_id FROM user WHERE first_name = 'Darell'),
        (SELECT hotel_id FROM hotel WHERE hotel_name = 'Old Key West'),
        (SELECT place_id FROM place WHERE city = 'Orlando'),
        5,
        2
    );

INSERT INTO reservation(user_id, hotel_id, place_id, adults, children) 
    VALUES (
        (SELECT user_id FROM user WHERE first_name = 'Isabella'),
        (SELECT hotel_id FROM hotel WHERE hotel_name = 'Provisio South Beach'),
        (SELECT place_id FROM place WHERE city = 'Miami'),
        10,
        6
    );

INSERT INTO reservation(user_id, hotel_id, place_id, adults, children) 
    VALUES (
        (SELECT user_id FROM user WHERE first_name = 'Austin'),
        (SELECT hotel_id FROM hotel WHERE hotel_name = 'Grand Provisio'),
        (SELECT place_id FROM place WHERE city = 'New York'),
        2,
        0
    );



CREATE TABLE history (
    id                        INT              NOT NULL        AUTO_INCREMENT,
    reservation_id            INT              NOT NULL,
    points                    INT              NOT NULL,
    user_id                   INT              NOT NULL, 
    PRIMARY KEY(id),
    FOREIGN KEY(user_id) 
        REFERENCES user(user_id)
);

INSERT INTO history(reservation_id, points, user_id) 
    VALUES (
        (SELECT reservation_id FROM reservation WHERE adults = 10),
        200,
        (SELECT user_id FROM reservation WHERE adults = 10)
    );

INSERT INTO history(reservation_id, points, user_id) 
    VALUES (
        (SELECT reservation_id FROM reservation WHERE adults = 5),
        1800,
        (SELECT user_id FROM reservation WHERE adults = 5)
    );

INSERT INTO history(reservation_id, points, user_id) 
    VALUES (
        (SELECT reservation_id FROM reservation WHERE adults = 2),
        2840,
        (SELECT user_id FROM reservation WHERE adults = 2)
    );



SELECT * FROM user;
SELECT * FROM place;
SELECT * FROM hotel;
SELECT * FROM reservation;
SELECT * FROM history;

