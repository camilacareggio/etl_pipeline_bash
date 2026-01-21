FROM postgres:17

RUN apt-get update && apt-get install -y wget \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY run_etl.sh /app/run_etl.sh
RUN chmod +x /app/run_etl.sh
