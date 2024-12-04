CREATE SCHEMA `airbnb`
USE `airbnb`


CREATE TABLE listings (
    id INT PRIMARY KEY,
    host_id INT,
    neighbourhood_group VARCHAR(255),
    neighbourhood VARCHAR(255),
    latitude DECIMAL(9,6),
    longitude DECIMAL(9,6),
    room_type VARCHAR(100),
    price DECIMAL(10, 2),
    minimum_nights INT,
    number_of_reviews INT,
    reviews_per_month DECIMAL(5,2),
    calculated_host_listings_count INT,
    availability_365 INT
);

SELECT * FROM listings

CREATE TABLE reviews (
    listing_id INT,
    id INT PRIMARY KEY,
    reviewer_id INT,
    comments LONGTEXT,
    `month` INT, 
    CONSTRAINT fk_reviews_listings
		FOREIGN KEY (id)
        REFERENCES listings(id)
        ON DELETE CASCADE 
        ON UPDATE CASCADE 
        );
    