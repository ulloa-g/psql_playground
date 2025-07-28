SET search_path TO mariobross;

INSERT INTO characters (name, homeland, favorite_color) VALUES
('Mario', 'Mushroom Kingdom', 'Red'),
('Luigi', 'Mushroom Kingdom', 'Green'),
('Peach', 'Mushroom Kingdom', 'Pink'),
('Bowser', 'Koopa Kingdom', 'Yellow'),
('Toad', 'Mushroom Kingdom', 'Blue'),
('Yoshi', 'Dinosaur Land', 'Green'),
('Wario', 'Diamond City', 'Yellow'),
('Daisy', 'Sarasaland', 'Orange'),
('Waluigi', 'Diamond City', 'Purple')
ON CONFLICT (name) DO NOTHING;

INSERT INTO more_info (birthday, height_cm, weight_kg, character_id) VALUES
('1981-07-09', 155, 64.5, 1), -- Mario
('1983-12-01', 152, 68.0, 2), -- Luigi
('1985-07-21', 165, 55.0, 3), -- Peach
('1985-07-21', 258, 300, 4), -- Bowser
('1988-11-21', 100, 30.0, 5), -- Toad
('1990-07-21', 120, 45.0, 6), -- Yoshi
('1992-06-23', 170, 80.0, 7), -- Wario
('1992-06-23', NULL, NULL, 8), -- Daisy
('2000-04-01', 175, 75.0, 9) -- Waluigi
ON CONFLICT (character_id) DO NOTHING;