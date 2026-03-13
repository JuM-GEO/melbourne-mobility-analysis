--Insert data into staging tram_stops table
COPY mobility_analysis.stg_gtfs_tram_stops(stop_id, stop_name, stop_lat, stop_lon, stop_url, location_type, parent_station, wheelchair_boarding, level_id)  
FROM 'C:\Program Files\PostgreSQL\18\data\tram_stops.txt' --replace with the actual path to your file
-- In this case, the PTV file is a .txt, however the structure is the same as a .csv file, 
-- so we can use the same COPY command to import the data
DELIMITER ','
CSV HEADER;

--Insert data into staging tram_shapes table
COPY mobility_analysis.stg_gtfs_tram_shapes(shape_id, shape_pt_lat, shape_pt_lon, shape_pt_sequence, shape_dist_traveled)  
FROM 'C:\Program Files\PostgreSQL\18\data\tram_shapes.txt' --replace with the actual path to your file
-- In this case, the PTV file is a .txt, however the structure is the same as a .csv file, 
-- so we can use the same COPY command to import the data
DELIMITER ','
CSV HEADER;