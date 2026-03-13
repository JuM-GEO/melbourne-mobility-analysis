# Melbourne Mobility Analysis
## 🌏 **Project Goal**
This project aims to analyze Melbourne's public transportation network, focusing on identifying coverage gaps, optimizing routes, and calculating accessibility indexes.
It also serves as a learning lab for Data Engineering, Geospatial Analysis, and SQL/PostGIS, and as a portfolio project demonstrating best practices in software development and Domain-Driven Design (DDD).

## 🛠 **Tools and Technologies**
- Python – scripts and notebooks for data exploration and transformation
- PostgreSQL + PostGIS – relational database with geospatial support
- SQL Tools (VS Code extension) – integration and query execution on PostgreSQL
- GTFS (General Transit Feed Specification) – official public transport data from Melbourne (trams and metro)
- Jupyter Notebooks – data exploration and visualization
- Git & GitHub – version control and project organization

## 📁 **Repository Structure**

```text
melbourne-mobility-analysis/
│
├── README.md
├── pyproject.toml
├── requirements.txt
├── .gitignore
│
├── data/
│   ├── raw/         # raw GTFS files
│   └── processed/   # cleaned and transformed data
│
├── notebooks/       # exploratory notebooks and testing
│   └── exploratory.ipynb
│
├── src/
│   └── melb_mobility/
│       ├── domain/           # entities, value objects, repositories
│       ├── application/      # use cases / business logic
│       ├── infrastructure/   # DB connection, loaders, spatial queries
│       └── interfaces/       # CLI and other interfaces
│
└── tests/                    # unit and integration tests
```

## 🚀 **Pipeline Steps**
- Staging – ingest GTFS .txt files into PostGIS staging tables
- Transformation – create point and line geometries (ex. tram_stops and tram_shape_lines)
- Analysis – calculate coverage, identify transport gaps, and compute accessibility indexes
- Validation – check spatial integrity and data consistency

## ⚡ **Project Status**

- Repository setup with DDD structure
- PostgreSQL/PostGIS connection established
- Tram stops ingestion (stops.txt)
- Tram line creation (shapes.txt) – in progress
- Integration with trips/routes data
- Spatial analyses and visualizations

This project is actively under development and will be updated as new stages are implemented.

## 📌 **Notes**

The project is intended for learning and portfolio demonstration, highlighting skills in geospatial analysis, SQL, and software architecture.