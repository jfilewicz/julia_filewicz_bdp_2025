--4 W tabeli obiekty, jako obiekt7 zapisz obiekt złożony z obiektu 3 i obiektu 4.
INSERT INTO obiekty (nazwa, geom)
SELECT 
    'obiekt7',
    ST_Collect(a.geom, b.geom)
FROM obiekty a, obiekty b
WHERE a.nazwa = 'obiekt3' AND b.nazwa = 'obiekt4';
