--6 Znajdź wszystkie skrzyżowania, które znajdują się w odległości 200 m od linii zbudowanej z punktów w tabeli ‘input_points’. Wykorzystaj tabelę T2019_STREET_NODE. Dokonaj reprojekcji geometrii, aby była zgodna z resztą tabel.
CREATE TABLE input_points_line AS
SELECT ST_MakeLine(geom3068 ORDER BY id) AS geom3068
FROM input_points;

CREATE TABLE streets_3068 AS
SELECT *, ST_Transform(geom, 3068) AS geom3068
FROM streets_2019;

CREATE TABLE nodes_200m AS
SELECT s.*
FROM streets_3068 s, input_points_line l
WHERE ST_DWithin(s.geom3068, l.geom3068, 200);
