CREATE TABLE buildings (
    id SERIAL PRIMARY KEY,
    geom GEOMETRY(POLYGON, 0),
	name TEXT
);

CREATE TABLE roads (
    id SERIAL PRIMARY KEY,
    geom GEOMETRY(LINESTRING, 0),
	name TEXT
);

CREATE TABLE poi (
    id SERIAL PRIMARY KEY,
    geom GEOMETRY(POINT, 0),
	name TEXT
);
