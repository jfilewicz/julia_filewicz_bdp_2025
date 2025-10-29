--5 Zaktualizuj dane w tabeli ‘input_points’ tak, aby punkty te były w układzie współrzędnych DHDN.Berlin/Cassini.
ALTER TABLE input_points
ADD COLUMN geom3068 geometry(Point, 3068);

UPDATE input_points
SET geom3068 = ST_Transform(geom, 3068);

SELECT 
    id,
	ST_AsText(geom) AS geom4326,
    ST_SRID(geom) AS srid4326,
    ST_AsText(geom3068) AS geom3068,
    ST_SRID(geom3068) AS srid3068
FROM input_points;
