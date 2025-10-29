--2 Wyznacz pole powierzchni bufora o wielkości 5 jednostek, który został utworzony wokół najkrótszej linii łączącej obiekt 3 i 4.
SELECT 
    ST_Area(
        ST_Buffer(
            ST_ShortestLine(a.geom, b.geom),
            5
        )
    ) AS pole_bufora
FROM obiekty a, obiekty b
WHERE a.nazwa = 'obiekt3' AND b.nazwa = 'obiekt4';
