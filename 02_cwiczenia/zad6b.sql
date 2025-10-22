SELECT 
    ST_AsText(geom) AS wkt,
    ST_Area(geom) AS area,
    ST_Perimeter(geom) AS perimeter
FROM buildings
WHERE name = 'BuildingA';
