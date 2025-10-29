--5 Wyznacz pole powierzchni wszystkich buforów o wielkości 5 jednostek, które zostały utworzone wokół obiektów nie zawierających łuków
SELECT 
    SUM(ST_Area(ST_Buffer(geom, 5))) AS pola_buforow
FROM obiekty
WHERE ST_HasArc(geom) = FALSE;
