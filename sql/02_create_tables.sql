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
    character_id INT UNIQUE NOT NULL REFERENCES characters(character_id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS sounds (
    sound_id SERIAL PRIMARY KEY,
    file_name VARCHAR(40) UNIQUE NOT NULL,
    character_id INT NOT NULL REFERENCES characters(character_id) ON DELETE CASCADE 
);

CREATE TABLE IF NOT EXISTS actions(
    action_id SERIAL PRIMARY KEY,
    action_name VARCHAR(20) UNIQUE NOT NULL
);

-- Table to associate characters with their actions (Juntion Table)
CREATE TABLE IF NOT EXISTS character_actions(
    character_id INT NOT NULL REFERENCES characters(character_id) ON DELETE CASCADE,
    action_id INT NOT NULL REFERENCES actions(action_id) ON DELETE CASCADE,
    PRIMARY KEY (character_id, action_id)  -- Composite Primary Key
);
