# ETL Pipeline with Bash, Postgres and Docker

This project is a practice ELT pipeline that ingests CSV data, performs simple transformation and loads it into PostgreSQL, all orchestrated with Docker Compose.

It was developed as hands-on practice for the __Building ETL and Data Pipelines with Bash, Airflow and Kafka__ course by IBM.

### How to Build and Run
```
docker compose build

docker compose up -d
```

### Remove everything
```
docker compose down -v
```
