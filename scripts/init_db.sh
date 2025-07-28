#!/bin/bash

# cargar credenciales y variables de entorno desde .env
set -o allexport
source ../.env
set +o allexport

# crear base de datos si no existe
PGPASSWORD=$PGPASSWORD psql -U $PGUSER -h localhost -d postgres -c "CREATE DATABASE $DBNAME;"

# ejecutar scripts SQL para crear esquema y tablas
PGPASSWORD=$PGPASSWORD psql -U $PGUSER -h localhost -d "$DBNAME" -f ../sql/01_create_schema.sql
PGPASSWORD=$PGPASSWORD psql -U $PGUSER -h localhost -d "$DBNAME" -f ../sql/02_create_tables.sql
PGPASSWORD=$PGPASSWORD psql -U $PGUSER -h localhost -d "$DBNAME" -f ../sql/03_populate_tables.sql
