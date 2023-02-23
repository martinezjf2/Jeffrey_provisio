

/* Team Two
SQL Insert Statements
January 21, 2023

To start the mysql server run this on your terminal
mysql -u root -p */


-- drop database
DROP DATABASE provisio;

-- show databases
SHOW DATABASES;

-- create provisio database
CREATE DATABASE provisio;

-- activate database
USE provisio;


-- drop test user if exists 
DROP USER IF EXISTS 'provisio_user'@'localhost';

-- Create provisio_user and grant them all privileges to the provisio database 
CREATE USER 'provisio_user'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';

-- Grant all privileges to the provisio database to user provisio_user on localhost 
GRANT ALL PRIVILEGES ON provisio.* TO'provisio_user'@'localhost';

FLUSH PRIVILEGES;

USE provisio;




-- DROP TABLES IF THEY EXISTS
DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS hotel;
DROP TABLE IF EXISTS place;
DROP TABLE IF EXISTS reservation;



-- CREATE USER TABLE
CREATE TABLE user (
    user_id       	INT       		NOT NULL        	AUTO_INCREMENT,
    first_name      VARCHAR(75)     NOT NULL,
    last_name       VARCHAR(75)     NOT NULL,
    email           VARCHAR(255)    NOT NULL 			UNIQUE,
    passphrase      VARCHAR(255)    NOT NULL,
    PRIMARY KEY(user_id)
);

INSERT INTO user(first_name, last_name, email, passphrase)
    VALUES('Darell', 'Reese', 'dreese@gmail.com', 'Python%78');

INSERT INTO user(first_name, last_name, email, passphrase)
    VALUES('Austin', 'Powers', 'yeahbaby@hotmail.com', 'hahaYEAH!');

INSERT INTO user(first_name, last_name, email, passphrase)
    VALUES('Isabella', 'Holmes', 'holmesbella@icloud.com', 'Detective#700');

--DELETE FROM user WHERE first_name = 'Jeffrey'; done for testing purposes
--Delete FROM reservation WHERE adults = 23;

-- CREATE TABLE PLACE (LOCATION IS A KEYWORD IN MYSQL)

CREATE TABLE place (
    place_id        INT             NOT NULL        AUTO_INCREMENT,
    city            VARCHAR(75)     NOT NULL,
    ind_state       VARCHAR(75)     NOT NULL,
    zip             VARCHAR(255)    NOT NULL,
    picture         VARCHAR(300)    NOT NULL,
    PRIMARY KEY(place_id)
);

INSERT INTO place(city, ind_state, zip, picture)
    VALUES('Orlando', 'Florida', '32819', 'orlando.jpg');

INSERT INTO place(city, ind_state, zip, picture)
    VALUES('Miami', 'Florida', '33141', 'miami.jpg');

INSERT INTO place(city, ind_state, zip, picture)
    VALUES('New York', 'New York', '10011', 'newyork.jpg');

INSERT INTO place(city, ind_state, zip, picture)
    VALUES('Melbourne', 'Australia', '89432', 'australia.jpg');
    
INSERT INTO place(city, ind_state, zip, picture)
    VALUES('Las Vegas', 'Nevada', '32093', 'lasvegas.jpg');
    
INSERT INTO place(city, ind_state, zip, picture)
    VALUES('Paris', 'France', '93849', 'paris.jpg');
   
INSERT INTO place(city, ind_state, zip, picture)
    VALUES('Venice', 'Italy', '38473', 'venice.jpg');
 
INSERT INTO place(city, ind_state, zip, picture)
    VALUES('Lake Tahoe', 'Florida', '77833', 'laketahoe.jpg');

INSERT INTO place(city, ind_state, zip, picture)
    VALUES('London', 'England', '56748', 'london.jpg');




-- CREATE TABLE HOTEL

CREATE TABLE hotel (
    hotel_id        INT             NOT NULL        AUTO_INCREMENT,
    hotel_name      VARCHAR(75)     NOT NULL,
    address      VARCHAR(200)     NOT NULL,
    phone_number      VARCHAR(25)     NOT NULL,
    price          	 INT            	 NOT NULL,
    descrip         VARCHAR(255)    NOT NULL,
    amenities       VARCHAR(300)    NOT NULL,
    place_id        INT             NOT NULL,
    PRIMARY KEY(hotel_id),
    FOREIGN KEY (place_id)
        REFERENCES place(place_id)
);


INSERT INTO hotel(hotel_name, address, phone_number, price, descrip, amenities, place_id)
    VALUES(
        'Old Key West', 
        '123 Madison St',
        '(631) 728-3948',
        500, 
        'Family fun resort style stay', 
        'Pool, Tennis, Gym, Amusement Parks, Restaurants', 
        (SELECT place_id FROM place where city = 'Orlando')
        );

INSERT INTO hotel(hotel_name, address, phone_number, price, descrip, amenities, place_id)
    VALUES(
        'Provisio South Beach', 
        '786 Hollywood Blvd',
        '(516) 283-7483',
        1000, 
        'Adult Hideaway', 
        'Pool, Clubs, Gym, Restaurants, Bars', 
        (SELECT place_id FROM place where city = 'Miami')
        );

INSERT INTO hotel(hotel_name, address, phone_number, price, descrip, amenities, place_id)
    VALUES(
        'Grand Provisio', 
        '362 Grand Way',
        '(323) 748-3928',
        2000, 
        'Executive Business Stays', 
        'Pool, Gym, Conference Areas, Restaurants, Free Wifi', 
        (SELECT place_id FROM place where city = 'New York')
        );
        
INSERT INTO hotel(hotel_name, address, phone_number, price, descrip, amenities, place_id)
    VALUES(
        'DoubleTree by Hilton Hotel', 
        '270 Flinders St',
        '+61 3 9654 6888',
        689, 
        'Executive Business Stays', 
        'Pool, Gym, Conference Areas, Restaurants, Free Wifi', 
        (SELECT place_id FROM place where city = 'Melbourne')
        );


INSERT INTO hotel(hotel_name, address, phone_number, price, descrip, amenities, place_id)
    VALUES(
        'Caesars Palace', 
        '3570 S Las Vegas Blvd',
        '(866) 227-5938',
        1727, 
        'Executive Business Stays', 
        'Pool, Gym, Conference Areas, Restaurants, Free Wifi', 
        (SELECT place_id FROM place where city = 'Las Vegas')
        );
 
INSERT INTO hotel(hotel_name, address, phone_number, price, descrip, amenities, place_id)
    VALUES(
        'Hotel Astoria - Astotel', 
        '42 rue de Moscou 8th Arr.,',
        '011 33 1 42 93 63 53',
        125, 
        'Executive Business Stays', 
        'Pool, Gym, Conference Areas, Restaurants, Free Wifi', 
        (SELECT place_id FROM place where city = 'Paris')
        );
        
INSERT INTO hotel(hotel_name, address, phone_number, price, descrip, amenities, place_id)
    VALUES(
        'Hotel Mercurio Venice', 
        '30124 Venezia VE',
        '+39 041 522 0947',
        67, 
        'Executive Business Stays', 
        'Pool, Gym, Conference Areas, Restaurants, Free Wifi', 
        (SELECT place_id FROM place where city = 'Venice')
        );
        
INSERT INTO hotel(hotel_name, address, phone_number, price, descrip, amenities, place_id)
    VALUES(
        'Hard Rock Hotel & Casino Lake Tahoe', 
        '50 US-59, Stateline',
        '(844) 588-7625',
        80, 
        'Executive Business Stays', 
        'Pool, Gym, Conference Areas, Restaurants, Free Wifi', 
        (SELECT place_id FROM place where city = 'Lake Tahoe')
        );
        
INSERT INTO hotel(hotel_name, address, phone_number, price, descrip, amenities, place_id)
    VALUES(
        'DoubleTree by Hilton London - Tower of London', 
        '7 Pepys St, Londong EC3N 4AF',
        '+44 20 7709 1000',
        134, 
        'Executive Business Stays', 
        'Pool, Gym, Conference Areas, Restaurants, Free Wifi', 
        (SELECT place_id FROM place where city = 'London')
        );
        
        
-- CREATE TABLE RESERVATION

CREATE TABLE reservation (
    reservation_id     		INT             NOT NULL        AUTO_INCREMENT,
    user_id            		INT             NOT NULL,
    hotel_id           		INT             NOT NULL,
    adults             		INT             NOT NULL,
    children           		INT             NOT NULL,
    points           		INT             NOT NULL,
    confirmation_code  		VARCHAR(50)	   	NOT NULL,
    check_in           		VARCHAR(100)    NOT NULL,
    check_out		   		VARCHAR(100)    NOT NULL,
    room_type		   		VARCHAR(100)    NOT NULL,
    instructions	   		VARCHAR(400),
    PRIMARY KEY(reservation_id),
    FOREIGN KEY (user_id)
        REFERENCES user(user_id),
    FOREIGN KEY (hotel_id)
        REFERENCES hotel(hotel_id)
); 

INSERT INTO reservation(user_id, hotel_id, adults, children, points, confirmation_code, check_in, check_out, room_type, instructions) 
    VALUES (
        (SELECT user_id FROM user WHERE first_name = 'Darell'),
        (SELECT hotel_id FROM hotel WHERE hotel_name = 'Old Key West'),
        5,
        2,
        150,
        '36D38FJK3',
        '2019-08-21',
        '2019-08-28',
        'Double Queen Beds',
        'Make sure to have it close to the lobby'
    );

INSERT INTO reservation(user_id, hotel_id, adults, children, points, confirmation_code, check_in, check_out, room_type, instructions) 
    VALUES (
        (SELECT user_id FROM user WHERE first_name = 'Darell'),
        (SELECT hotel_id FROM hotel WHERE hotel_name = 'DoubleTree by Hilton Hotel'),
        1,
        0,
        150,
        '27T98JKV2',
        '2020-09-02',
        '2020-09-17',
        'King',
        'No suggestions'
    );

INSERT INTO reservation(user_id, hotel_id, adults, children, points, confirmation_code, check_in, check_out, room_type, instructions) 
    VALUES (
        (SELECT user_id FROM user WHERE first_name = 'Darell'),
        (SELECT hotel_id FROM hotel WHERE hotel_name = 'Caesars Palace'),
        3,
        7,
        150,
        '98DYE839J',
        '2021-05-10',
        '2021-05-20',
        'Double Full Beds',
        'Would love to be close to the pool or a bar'
    );
    
INSERT INTO reservation(user_id, hotel_id, adults, children, points, confirmation_code, check_in, check_out, room_type, instructions) 
    VALUES (
        (SELECT user_id FROM user WHERE first_name = 'Isabella'),
        (SELECT hotel_id FROM hotel WHERE hotel_name = 'Provisio South Beach'),
        10,
        6,
        150,
        '3TIM4XOZ',
        '2020-09-27',
        '2020-10-14',
        'Double Queen Beds',
        'Would like to have it close to the pool'
    );
    
INSERT INTO reservation(user_id, hotel_id, adults, children, points, confirmation_code, check_in, check_out, room_type, instructions) 
    VALUES (
        (SELECT user_id FROM user WHERE first_name = 'Isabella'),
        (SELECT hotel_id FROM hotel WHERE hotel_name = 'Hotel Mercurio Venice'),
        2,
        0,
        150,
        '87SCK473I',
        '2021-03-16',
        '2021-03-27',
        'Double Full Beds',
        'Please make sure to have it close to shops'
    );

INSERT INTO reservation(user_id, hotel_id, adults, children, points, confirmation_code, check_in, check_out, room_type, instructions) 
    VALUES (
        (SELECT user_id FROM user WHERE first_name = 'Austin'),
        (SELECT hotel_id FROM hotel WHERE hotel_name = 'Hotel Astoria - Astotel'),
        2,
        0,
        150,
        '8JD65SYE2',
        '2022-07-21',
        '2022-08-09',
        'King',
        'Would love to have it next to a restaurant'
    );

INSERT INTO reservation(user_id, hotel_id, adults, children, points, confirmation_code, check_in, check_out, room_type, instructions) 
    VALUES (
        (SELECT user_id FROM user WHERE first_name = 'Austin'),
        (SELECT hotel_id FROM hotel WHERE hotel_name = 'Hotel Mercurio Venice'),
        4,
        2,
        150,
        '1JK38KJH2',
        '2021-05-21',
        '2021-05-31',
        'Double Full Beds',
        'Would be nice to have a high floor to watch the fireworks'
    );
    
INSERT INTO reservation(user_id, hotel_id, adults, children, points, confirmation_code, check_in, check_out, room_type, instructions) 
    VALUES (
        (SELECT user_id FROM user WHERE first_name = 'Austin'),
        (SELECT hotel_id FROM hotel WHERE hotel_name = 'Hard Rock Hotel & Casino Lake Tahoe'),
        1,
        0,
        150,
        '9EN47MWQ6',
        '2022-01-01',
        '2022-01-21',
        'King',
        'Could we leave our packages at reception, so it could be brought inside when check-in'
    );

INSERT INTO reservation(user_id, hotel_id, adults, children, points, confirmation_code, check_in, check_out, room_type, instructions) 
    VALUES (
        (SELECT user_id FROM user WHERE first_name = 'Austin'),
        (SELECT hotel_id FROM hotel WHERE hotel_name = 'DoubleTree by Hilton London - Tower of London'),
        4,
        7,
        150,
        '7QQ44ENN3',
        '2022-12-21',
        '2022-12-31',
        'Double Queen Beds',
        'High Floor if possible'
    );
    
INSERT INTO reservation(user_id, hotel_id, adults, children, points, confirmation_code, check_in, check_out, room_type, instructions) 
    VALUES (
        (SELECT user_id FROM user WHERE first_name = 'Austin'),
        (SELECT hotel_id FROM hotel WHERE hotel_name = 'Grand Provisio'),
        3,
        2,
        150,
        '4HTU9384',
        '2019-06-09',
        '2019-06-17',
        'Double Full Beds',
        'No suggestions'
    );





SELECT * FROM user;
SELECT * FROM place;
SELECT * FROM hotel;
SELECT * FROM reservation;




