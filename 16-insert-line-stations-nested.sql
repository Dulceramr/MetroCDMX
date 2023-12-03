USE metro_cdmx;

INSERT INTO `lines_stations` (line_id,
station_id) VALUES
( -- Lazaro cardenas 
    (
        SELECT `lines`.`id` 
        FROM `lines`
        WHERE `lines`.`name` = "Linea 9"
    ),
    (
        SELECT `stations`.`id`
        FROM `stations`
        WHERE `stations`.`name` = "Lázaro Cardenas"
    )
),
( -- Ferreria
    (
        SELECT `lines`.`id`
        FROM `lines`
        WHERE `lines`.`name` = "Linea 6"
    ),
    (
        SELECT `stations`.`id`
        FROM `stations`
        WHERE `stations`.`name` = "Ferrería"
    )
),
( -- Pantitlan 5 
    ( 
        SELECT `lines`.`id`
        FROM `lines`
        WHERE `lines`.`name` = "Linea 5"
    ),
    (
        SELECT `stations`.`id`
        FROM `stations`
        WHERE `stations`.`name` = "Pantitlán"
    )
),
(
    ( -- Tacuba 7 
        SELECT `lines`.`id`
        FROM `lines`
        WHERE `lines`.`name` = "Linea 7"
    ),
    (
        SELECT `stations`.`id`
        FROM `stations`
        WHERE `stations`.`name` = "Tacuba"
    )
);