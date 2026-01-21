#!/bin/bash

# Extract data from Kaggle source
echo "Extracting data"
wget "https://raw.githubusercontent.com/sdelquin/laliga-data/main/datasets/S2324-laliga-players.csv"
cut -d"," -f3,6-10 S2324-laliga-players.csv > extracted-data.csv

# Convert all text to lowercase
echo "Transforming data"
tr "[A-Z]" "[a-z]" < extracted-data.csv > transformed-data.csv

# Load data into Postgre database
echo "Loading data"
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c "\copy players(id, nickname, firstname, lastname, gender, date_of_birth) FROM '/app/transformed-data.csv' WITH CSV HEADER;"