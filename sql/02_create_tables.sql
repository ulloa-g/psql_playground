SET search_path TO mariobross;

CREATE TABLE IF NOT EXISTS characters (
    character_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    homeland VARCHAR(50) NOT NULL,
    favorite_color VARCHAR(50) NOT NULL
);
