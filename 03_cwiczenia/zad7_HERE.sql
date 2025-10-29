--7 Policz jak wiele sklepów sportowych (‘Sporting Goods Store’ - tabela POIs) znajduje się w odległości 300 m od parków (LAND_USE_A).
SELECT 
    COUNT(DISTINCT p.gid) AS ile_sportowych
FROM poi_2019 p
JOIN land_use_a_2019 l
    ON ST_DWithin(p.geom, l.geom, 300)
WHERE p.type = 'Sporting Goods Store';
