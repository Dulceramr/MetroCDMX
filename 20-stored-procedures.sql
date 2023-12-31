USE metro_cdmx;

-- Procedimiento almacenado para calcular la distancia entre dos puntos, TRUE metros, FALSE km
DELIMITER //
CREATE PROCEDURE calculate_distance_between_lines(
    IN station_one POINT,
    IN station_two POINT,
    IN meters BOOLEAN
)
BEGIN
    IF meters THEN

        SELECT 
        ST_Distance_Sphere(station_one, station_two) AS Distances;
        
    ELSE 
        SELECT 
        ST_Distance_Sphere(station_one, station_two) / 1000 AS Distances;

    END IF;

END //

DELIMITER ;