USE metro_cdmx;

-- Calcular distancia entre Balderas y Pino Suarez en metros.
SELECT 
ST_Distance_Sphere(
    POINT(-99.14912224, 19.42729875),
    POINT(-99.13303971, 19.42543703)
) AS distance;

-- Calcular distancia entre Balderas y Pino Suarez en kilometros.
SELECT 
ST_Distance_Sphere(
    POINT(-99.14912224, 19.42729875),
    POINT(-99.13303971, 19.42543703)
) / 1000 AS distance;