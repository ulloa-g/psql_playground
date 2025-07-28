SET search_path TO mariobross;

SELECT name, favorite_color, birthday
FROM characters 
JOIN more_info ON characters.character_id = more_info.character_id;

SELECT * 
FROM characters
JOIN sounds ON characters.character_id = sounds.character_id;

SELECT name, action_name
FROM character_actions 
JOIN characters ON character_actions.character_id = characters.character_id
JOIN actions ON character_actions.action_id = actions.action_id;
