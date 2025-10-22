SELECT ST_Area(ST_SymDifference(b.geom, ST_GeomFromText('POLYGON((4 7, 6 7, 6 8, 4 8, 4 7))', 0))) AS difference
FROM buildings b
WHERE b.name = 'BuildingC';
