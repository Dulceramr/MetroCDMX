-- Crear las tablas 

USE metro_cdmx;

CREATE TABLE `lines` (
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(10) NOT NULL, 
    `color` VARCHAR(15) NOT NULL, 
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, 
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, 

    PRIMARY KEY (id)
)

DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci; 

-- Crear tablas de estaciones 

USE metro_cdmx;

CREATE TABLE `stations` (
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL, 
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, 
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, 

    PRIMARY KEY (id)
)

DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci; 

-- Crear tablas de trenes 

USE metro_cdmx;

CREATE TABLE `trains` (
    `serial_number` varchar(10) NOT NULL, 
    `line_id` BIGINT(20) UNSIGNED NOT NULL,
    `type` TINYINT(4) NOT NULL, 
    `year` INT(4) NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, 
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, 

    PRIMARY KEY (serial_number),
    FOREIGN KEY (line_id) REFERENCES `lines`(`id`)
)

DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci; 