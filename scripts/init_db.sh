#!/bin/bash


PGUSER=tu_nombre_de_usuario # Reemplaza con tus credenciales

PGPASSWORD=tu_contraseña # # Reemplaza con tus credenciales
DBNAME=mario_db_test

PGPASSWORD=$PGPASSWORD psql -U $PGUSER -h localhost -d postgres -c "CREATE DATABASE $DBNAME;"

PGPASSWORD=$PGPASSWORD psql -U $PGUSER -h localhost -d "$DBNAME" -f ../sql/01_create_schema.sql
PGPASSWORD=$PGPASSWORD psql -U $PGUSER -h localhost -d "$DBNAME" -f ../sql/02_create_tables.sql
