--2 Znajdź ile nowych POI pojawiło się w promieniu 500 m od wyremontowanych lub wybudowanych budynków, które znalezione zostały w zadaniu 1. Policz je wg ich kategorii.
SELECT 
    p19.type,
    COUNT(DISTINCT p19.poi_id) AS ile_poi
FROM poi_2019 AS p19
JOIN diff_buildings AS dbs
    ON ST_DWithin(p19.geom, dbs.geom, 500)	-- czy poi jest w odl 500 m od zmienionych budynków 
LEFT JOIN poi_2018 AS p18
    ON p19.poi_id = p18.poi_id          
WHERE p18.poi_id IS NULL
GROUP BY p19.type
ORDER BY ile_poi DESC;
