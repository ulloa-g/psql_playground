#!/bin/bash

# cargar credenciales y variables de entorno desde .env
set -o allexport
source ../.env
set +o allexport

# ejecutar consultas de ejemplo
PGPASSWORD=$PGPASSWORD psql -U $PGUSER -h localhost -d "$DBNAME" -f ../sql/04_example_queries.sql
