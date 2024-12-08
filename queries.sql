SET @given_time = '2024-12-06 14:10:00';

SELECT
    t.id AS table_id,
    t.table_size,
    CASE
        WHEN r.id IS NOT NULL THEN 'Reserved'
        ELSE 'Open'
        END AS status
FROM
    `table` t
        LEFT JOIN
    reservation r
    ON
        t.id = r.table_id
            AND @given_time >= r.reservation_time
            AND @given_time < DATE_ADD(r.reservation_time, INTERVAL 2 HOUR);