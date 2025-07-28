SET search_path TO mariobross;

CREATE TABLE IF NOT EXISTS characters (
    character_id SERIAL PRIMARY KEY,
    name VARCHAR(50) UNIQUE NOT NULL,
    homeland VARCHAR(50) NOT NULL,
    favorite_color VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS more_info(
    more_info_id SERIAL PRIMARY KEY,
    birthday DATE,
    height_cm INT,
    weight_kg NUMERIC(4, 1),
    character_id INT REFERENCES characters(character_id) ON DELETE CASCADE UNIQUE NOT NULL
);
