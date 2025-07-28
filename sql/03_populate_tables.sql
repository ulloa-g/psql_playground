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

INSERT INTO sounds (file_name, character_id) VALUES
('its-a-me.wav', 1),
('yippee.wav', 1),
('ha-ha.wav', 2),
('oh-yeah.wav', 2),
('yay.wav', 3),
('woo-hoo.wav', 3),
('mm-hmm.wav', 3),
('yahoo.wav', 1)
ON CONFLICT (file_name) DO NOTHING;

INSERT INTO actions (action_name) VALUES
('Jump'),
('Run'),
('Throw Fireball'),
('Use Hammer');

INSERT INTO character_actions (character_id, action_id) VALUES
(1, 1), -- Mario Jump
(1, 2), -- Mario Run
(1, 3), -- Mario Throw Fireball
(2, 1), -- Luigi Jump
(2, 2), -- Luigi Run
(3, 1), -- Peach Jump
(3, 2), -- Peach Run
(4, 1), -- Bowser Jump
(4, 2), -- Bowser Run
(5, 1), -- Toad Jump
(6, 1), -- Yoshi Jump
(7, 1), -- Wario Jump
(8, 1), -- Daisy Jump
(9, 1)  -- Waluigi Jump
ON CONFLICT (character_id, action_id) DO NOTHING;
