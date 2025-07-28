#!/bin/bash


PGUSER=tu_nombre_de_usuario # Reemplaza con tus credenciales
PGPASSWORD=tu_contraseña # Reemplaza con tus credenciales
DBNAME=mario_db

PGPASSWORD=$PGPASSWORD psql -U $PGUSER -h localhost -d postgres -c "CREATE DATABASE $DBNAME;"

PGPASSWORD=$PGPASSWORD psql -U $PGUSER -h localhost -d "$DBNAME" -f ../sql/01_create_schema.sql
PGPASSWORD=$PGPASSWORD psql -U $PGUSER -h localhost -d "$DBNAME" -f ../sql/02_create_tables.sql
PGPASSWORD=$PGPASSWORD psql -U $PGUSER -h localhost -d "$DBNAME" -f ../sql/03_populate_tables.sql
PGPASSWORD=$PGPASSWORD psql -U $PGUSER -h localhost -d "$DBNAME" -f ../sql/04_example_queries.sql
