--1 Znajdź budynki, które zostały wybudowane lub wyremontowane na przestrzeni roku (zmiana pomiędzy 2018 a 2019).
CREATE TABLE diff_buildings AS
SELECT DISTINCT b2019.*
FROM buildings_2019 AS b2019
LEFT JOIN buildings_2018 AS b2018
    ON b2019.polygon_id = b2018.polygon_id
WHERE b2018.polygon_id IS NULL
   OR NOT ST_Equals(b2019.geom, b2018.geom);
