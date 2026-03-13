--Creates table for tram stops, based on the staging table, 
-- but only with the relevant columns for the DW. Also filters only the data with location_type = 0, 
-- which are the actual tram stops, and not the parent stations or other types of locations.
-- has a geometry column to store the spatial data of the tram stops
CREATE TABLE mobility_analysis.tram_stops AS
SELECT
    stop_id,
    stop_name,
    stop_lat,
    stop_lon,
    ST_SetSRID(ST_MakePoint(stop_lon, stop_lat),4326) AS geom
FROM mobility_analysis.stg_gtfs_tram_stops
WHERE location_type IS NULL OR location_type = '';

-- Last, but not least, we create a spatial index on the geometry column to improve the performance of spatial queries
CREATE INDEX idx_tram_stops_geom 
ON mobility_analysis.tram_stops 
USING GIST (geom);