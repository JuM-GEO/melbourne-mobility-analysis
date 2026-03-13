--Creates table for tram shapes, based on the staging table, 
-- but only with the relevant columns for the DW.
-- Also uses the shape_pt_sequence to order the points in the shape correctly

CREATE TABLE mobility_analysis.tram_shape_lines AS
SELECT
    shape_id,
    ST_MakeLine(
        ST_SetSRID(
            ST_MakePoint(shape_pt_lon::float, shape_pt_lat::float),
            4326
        )
        ORDER BY shape_pt_sequence::integer --Transforms in integer, just in case it is a text type field
    ) AS geom
FROM mobility_analysis.stg_gtfs_tram_shapes
GROUP BY shape_id;

-- Last, but not least, we create a spatial index on the geometry column to improve the performance of spatial queries
CREATE INDEX idx_tram_shape_lines_geom 
ON mobility_analysis.tram_shape_lines 
USING GIST (geom);