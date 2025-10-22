SELECT name
FROM buildings
WHERE ST_Y(ST_Centroid(geom)) > 4.5;
