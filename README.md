# MarioDB - Modelado de datos relacionales con PostgreSQL

Este es un proyecto personal para practicar diseño de bases de datos relacionales en PostgreSQL. Se define un esquema con relaciones entre múltiples tablas, siguiendo buenas prácticas de modelado (incluso relaciones muchos-a-muchos) y usando scripts SQL ejecutables desde Bash en Linux. 

La base de datos y tablas están inspiradas en la hora de ruta de [freeCodeCamp.](https://www.freecodecamp.org/learn/relational-database)

El nombre de la base de datos es `mario_database`, y el esquema principal se llama `mariobross`.

---

## Estructura del proyecto
~~~
├── sql/
│ ├── 01_create_schema.sql
│ ├── 02_create_tables.sql
| ├── 03_populate_tables.sql
│ └── 04_example_queries.sql
├── scripts/
| ├── init_db.sh
│ └── run_queries.sh
├── diagrams/
| └── entity_relation.png
├── .env # Archivo con variables de entorno (NO se sube al repo)
├── .gitignore
└── README.md
~~~

---

## Requisitos

- PostgreSQL instalado localmente
- Bash (Linux o WSL)
- Visual Studio Code (opcional, recomendado)

---

## Configuración

1. **Cloná el repositorio:**

```bash
git clone https://github.com/tuusuario/psql_playground.git
cd psql_playground
```
2. **Crea un archivo .env en la raíz del proyecto con tus credenciales:**
```bash
touch .env
```
contenido del archivo ```.env```
~~~
PGUSER=tu_usuario_postgres
PGPASSWORD=tu_contraseña_postgres
DBNAME=mario_database
~~~
## Inicializar la base de datos

Desde la raíz del proyecto:

```bash
bash scripts/init_db.sh
```
Este script:

Lee las variables del archivo .env

Crea la base de datos

Crea el esquema, tablas y carga los datos
