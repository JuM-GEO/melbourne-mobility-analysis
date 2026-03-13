-- Postgis extension is required to create geometry columns and perform spatial operations
-- Run this command in your PostgreSQL database to enable PostGIS if you haven't already
--CREATE EXTENSION IF NOT EXISTS postgis;

-- Create a schema for the project, so it does not stores in public schema
CREATE SCHEMA IF NOT EXISTS mobility_analysis;