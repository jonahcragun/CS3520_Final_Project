DROP TABLE IF EXISTS reservation;
DROP TABLE IF EXISTS `table`;
DROP TABLE IF EXISTS card;
DROP TABLE IF EXISTS customer;
DROP TABLE IF EXISTS open_hours;


CREATE TABLE card
(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    card_reference VARCHAR(255) NOT NULL UNIQUE,
    created_at TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP(3),
    updated_at TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3)
);



CREATE TABLE customer (
`id` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
`first_name` varchar(100) DEFAULT NULL,
`last_name` varchar(100) DEFAULT NULL,
`phone` varchar(13) DEFAULT NULL,
`email` varchar(100) DEFAULT NULL,
`address` varchar(100) DEFAULT NULL,
`City` varchar(100) DEFAULT NULL,
`State` varchar(100) DEFAULT NULL
);



CREATE TABLE `table` (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
table_size int NOT NULL
);


CREATE TABLE reservation
(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    customer_id BIGINT NOT NULL,
    reservation_time DATETIME NOT NULL,
    number_of_guests BIGINT NOT NULL,
    table_id BIGINT NOT NULL REFERENCES `table`,
    card_id BIGINT REFERENCES card,
    created_at TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP(3),
    updated_at TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
    constraint reservation_customer_id_fk
        foreign key (customer_id) references customer (id),
    constraint reservation_table_id_fk
        foreign key (table_id) references `table` (id),
    constraint reservation_card_id_fk
        foreign key (card_id) references card (id)
);

DROP PROCEDURE IF EXISTS make_reservation;

DELIMITER $$
CREATE PROCEDURE make_reservation(
    IN p_customer_id BIGINT,
    IN p_reservation_time DATETIME,
    IN p_number_of_guests BIGINT,
    IN p_card_id BIGINT
)
BEGIN
    DECLARE suitable_table_id BIGINT;
    DECLARE reservation_end_time DATETIME;
    DECLARE open_start TIME;
    DECLARE open_end TIME;

    -- Calculate the reservation's end time (2 hours from the reservation start time)
    SET reservation_end_time = DATE_ADD(p_reservation_time, INTERVAL 2 HOUR);

    -- Get the open hours for the given day of the week
    SELECT open_time, close_time
    INTO open_start, open_end
    FROM open_hours
    WHERE day_of_week = DAYNAME(p_reservation_time);

    -- Ensure the reservation is within open hours
    IF TIME(p_reservation_time) < open_start OR TIME(reservation_end_time) > open_end THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Reservation time is outside of open hours.';
    END IF;

    -- Find the smallest suitable table that is not already booked
    SELECT id INTO suitable_table_id
    FROM `table`
    WHERE table_size >= p_number_of_guests
      AND id NOT IN (
        SELECT table_id
        FROM reservation r
        WHERE p_reservation_time >= r.reservation_time
          AND p_reservation_time < DATE_ADD(r.reservation_time, INTERVAL 2 HOUR)
    )
    ORDER BY table_size
    LIMIT 1;

    -- If no table is available, raise an error
    IF suitable_table_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'No suitable table is available for the given time slot.';
    END IF;

    -- Insert the reservation
    INSERT INTO reservation (
        customer_id,
        reservation_time,
        number_of_guests,
        table_id,
        card_id
    )
    VALUES (
               p_customer_id,
               p_reservation_time,
               p_number_of_guests,
               suitable_table_id,
               p_card_id
           );
END$$
DELIMITER ;



CREATE TABLE open_hours (
                            day_of_week ENUM('Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday') PRIMARY KEY,
                            open_time TIME NOT NULL,
                            close_time TIME NOT NULL
);

