--Creates staging table for tram stops, with raw data from csv file
-- Has all the columns from the csv file, but does not have the geometry column
CREATE TABLE mobility_analysis.stg_gtfs_tram_stops (
    stop_id TEXT,
    stop_name TEXT NOT NULL,
    stop_lat REAL NOT NULL,
    stop_lon REAL NOT NULL,
    stop_url TEXT,
    location_type TEXT,
    parent_station TEXT,
    wheelchair_boarding INTEGER,
    level_id TEXT
);

--Creates staging table for tram lines, with raw data from csv file
-- Based on the file shapes.txt
CREATE TABLE mobility_analysis.stg_gtfs_tram_shapes (
    shape_id TEXT, -- Here not set as PK because there can be multiple rows with the same shape_id, 
    -- as each row represents a point along the shape. We will set this later.
    shape_pt_lat REAL NOT NULL,
    shape_pt_lon REAL NOT NULL,
    shape_pt_sequence INTEGER NOT NULL,
    shape_dist_traveled REAL
);