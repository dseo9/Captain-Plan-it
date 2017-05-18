USE db_captain;
SELECT * FROM players;
INSERT INTO players (username, player_pwd, email, num_keys, stamps, lastLogin) VALUES ("cori", "123", "abc@gmail.com", 3, 2, NOW());
INSERT INTO players (username, player_pwd, email, num_keys, stamps, lastLogin) VALUES ("rafa", "456", "def@gmail.com", 10, 1, NOW());

INSERT INTO skin (skin_color) VALUES ("white");
INSERT INTO skin (skin_color) VALUES ("yellow");
INSERT INTO skin (skin_color) VALUES ("black");

SELECT * FROM skin;

INSERT INTO accessory (accessory_style) VALUES ("cathat");
INSERT INTO accessory (accessory_style) VALUES ("sun glasses");
INSERT INTO accessory (accessory_style) VALUES ("ring");

SELECT * FROM accessory;

INSERT INTO bottom (bottom_style, bottom_color) VALUES ("pants", "blue");
INSERT INTO bottom (bottom_style, bottom_color) VALUES ("pants", "red");
INSERT INTO bottom (bottom_style, bottom_color) VALUES ("skirt", "blue");
INSERT INTO bottom (bottom_style, bottom_color) VALUES ("skirt", "pink");

SELECT * FROM bottom;

INSERT INTO hair (hair_style, hair_color) VALUES ("short", "blue");
INSERT INTO hair (hair_style, hair_color) VALUES ("short", "red");
INSERT INTO hair (hair_style, hair_color) VALUES ("long", "blue");
INSERT INTO hair (hair_style, hair_color) VALUES ("long", "pink");

SELECT * FROM hair;

INSERT INTO top (top_style, top_color) VALUES ("t-shirt", "blue");
INSERT INTO top (top_style, top_color) VALUES ("t-shirt", "red");
INSERT INTO top (top_style, top_color) VALUES ("tank top", "blue");
INSERT INTO top (top_style, top_color) VALUES ("tank top", "pink");

SELECT * FROM top;

INSERT INTO avatar (Players_idPlayer, genre, Top_idTop, Skin_idSkin, Bottom_idBottom, Accessory_idAccessory, Hair_idHair) VALUES (2, "boy", 1, 2, 1, 1, 1);
INSERT INTO avatar (Players_idPlayer, genre, Top_idTop, Skin_idSkin, Bottom_idBottom, Accessory_idAccessory, Hair_idHair) VALUES (1, "girl", 2, 3, 1, 1, 2);
SELECT * FROM avatar;

INSERT INTO planets (Planet_name) VALUES ("Dairy Dome");
INSERT INTO planets (Planet_name) VALUES ("Fruit Fortress");
INSERT INTO planets (Planet_name) VALUES ("Pastry Palace");
INSERT INTO planets (Planet_name) VALUES ("Meat Mansion");
SELECT * FROM planets;

INSERT INTO questions (Question) VALUES ("How many glasses of milk are thrown away every day in Metro Vancouver?");
INSERT INTO questions (Question) VALUES ("How many liters of water do we spend to produce one kilogram of fruits?");
INSERT INTO questions (Question) VALUES ("How many loaves of bread are thrown away every day in Metro Vancouver? ");
INSERT INTO questions (Question) VALUES ("At what temperature should meat be frozen?");
SELECT * FROM questions;

INSERT INTO levels (idPlanet, idQuestion) VALUES (1, 1);
INSERT INTO levels (idPlanet, idQuestion) VALUES (2, 1);
INSERT INTO levels (idPlanet, idQuestion) VALUES (3, 1);
INSERT INTO levels (idPlanet, idQuestion) VALUES (4, 1);
SELECT * FROM levels;

INSERT INTO answers (idQuestion, answer, correct) VALUES (1, "70,000", 1);
INSERT INTO answers (idQuestion, answer, correct) VALUES (2, "962", 1);
INSERT INTO answers (idQuestion, answer, correct) VALUES (3, "32,000", 1);
INSERT INTO answers (idQuestion, answer, correct) VALUES (4, "Between -23 and -29 degrees Celsius", 1);
SELECT * FROM answers;

INSERT INTO game (idPlayer, lastLevelPlayed, game_start, game_end, wins, loses) VALUES (2, 1, NOW(), NOW(), 2, 2);
INSERT INTO game (idPlayer, lastLevelPlayed, game_start, game_end, wins, loses) VALUES (1, 1, NOW(), NOW(), 3, 2);
UPDATE game SET lastLevelPlayed = 3 WHERE idGame = 1;
SELECT * FROM game;
#DELETE FROM game WHERE idGame = 3;

UPDATE game SET game_end = NOW() WHERE idGame = 2;

SELECT stamps FROM players WHERE idPlayer = 2;

# Show the genre of the avatar from player rafa
SELECT avatar.genre FROM players INNER JOIN avatar ON players.idPlayer=avatar.Players_idPlayer WHERE players.username="rafa";

# Show the acessory of avatar from player rafa
SELECT accessory.accessory_style FROM ((players INNER JOIN avatar ON players.idPlayer=avatar.Players_idPlayer) INNER JOIN accessory ON avatar.Accessory_idAccessory=accessory.idAccessory) WHERE players.username="rafa";

# show question from cori game
SELECT Question FROM ((players INNER JOIN game ON players.idPlayer=game.idPlayer) INNER JOIN levels ON levels.idLevel=game.lastLevelPlayed INNER JOIN questions ON questions.idQuestion=levels.idQuestion) WHERE players.username="cori";

# show answer from cori game
SELECT answer FROM ((players INNER JOIN game ON players.idPlayer=game.idPlayer) INNER JOIN levels ON levels.idLevel=game.lastLevelPlayed INNER JOIN questions ON questions.idQuestion=levels.idQuestion INNER JOIN answers ON questions.idQuestion=answers.idQuestion) WHERE players.username="cori";

SELECT pla.Planet_name, ac.accessory_style, av.genre, tp.top_color, pl.email FROM planets pla, game gm, accessory ac, avatar av, top tp, players pl, levels lv WHERE pl.idPlayer=gm.idPlayer AND gm.lastLevelPlayed=lv.idLevel AND pla.idPlanet=lv.idPlanet AND pl.idPlayer=av.Players_idPlayer AND av.Accessory_idAccessory=ac.idAccessory AND av.Top_idTop=tp.idTop AND pl.username="cori";

