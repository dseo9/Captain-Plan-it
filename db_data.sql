USE db_captain;
##SELECT * FROM players;
#INSERT INTO players (username, player_pwd, email, num_keys, stamps, lastLogin) VALUES ("cori", "123", "abc@gmail.com", 3, 2, NOW());
#INSERT INTO players (username, player_pwd, email, num_keys, stamps, lastLogin) VALUES ("rafa", "456", "def@gmail.com", 10, 1, NOW());

# Skins Session #############################
INSERT INTO Skin (skin_color) VALUES ("white");
INSERT INTO Skin (skin_color) VALUES ("yellow");
INSERT INTO Skin (skin_color) VALUES ("brown");

#SELECT * FROM Skin;

# Acessory Session #############################
INSERT INTO Accessory (accessory_style) VALUES ("hat");
INSERT INTO Accessory (accessory_style) VALUES ("sunglasses");
INSERT INTO Accessory (accessory_style) VALUES ("accessory3");

#SELECT * FROM Accessory;

# Hair Session #############################
INSERT INTO Hair (hair_style, hair_color) VALUES ("short", "blue");
INSERT INTO Hair (hair_style, hair_color) VALUES ("short", "red");
INSERT INTO Hair (hair_style, hair_color) VALUES ("long", "blue");
INSERT INTO Hair (hair_style, hair_color) VALUES ("long", "pink");

#SELECT * FROM Hair;

# Bottom Session #############################
INSERT INTO Bottom (bottom_style, bottom_color) VALUES ("pants", "blue");
INSERT INTO Bottom (bottom_style, bottom_color) VALUES ("pants", "red");
INSERT INTO Bottom (bottom_style, bottom_color) VALUES ("skirt", "blue");
INSERT INTO Bottom (bottom_style, bottom_color) VALUES ("skirt", "pink");

#SELECT * FROM Bottom;

# Top Session #############################
INSERT INTO Top (top_style, top_color) VALUES ("t-shirt", "blue");
INSERT INTO Top (top_style, top_color) VALUES ("t-shirt", "red");
INSERT INTO Top (top_style, top_color) VALUES ("tank top", "blue");
INSERT INTO Top (top_style, top_color) VALUES ("tank top", "pink");

#SELECT * FROM Top;


#INSERT INTO Avatar (Players_idPlayer, genre, Top_idTop, Skin_idSkin, Bottom_idBottom, Accessory_idAccessory, Hair_idHair) VALUES (2, "boy", 1, 2, 1, 1, 1);
#INSERT INTO Avatar (Players_idPlayer, genre, Top_idTop, Skin_idSkin, Bottom_idBottom, Accessory_idAccessory, Hair_idHair) VALUES (1, "girl", 2, 3, 1, 1, 2);
##SELECT * FROM Avatar;

# Planets Session #############################
INSERT INTO Planets (Planet_name) VALUES ("Dairy Dome");
INSERT INTO Planets (Planet_name) VALUES ("Fruit Fortress");
INSERT INTO Planets (Planet_name) VALUES ("Pastry Palace");
INSERT INTO Planets (Planet_name) VALUES ("Meat Mansion");
#SELECT * FROM Planets;

# Questions Planet Dairy Dome Session #############################
# Question 1
INSERT INTO Questions (Question) VALUES ("How many glasses of milk are thrown away every day in Metro Vancouver?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (1, "70,000", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (1, "962", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (1, "1,000", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (1, "10", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (1, 1);

# Question 2
INSERT INTO Questions (Question) VALUES ("How many liters of water do we spend to produce one kilogram of milk?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (2, "70,000", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (2, "1,020", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (2, "32,000", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (2, "10", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (1, 2);

# Question 3
INSERT INTO Questions (Question) VALUES ("How many liters of water do we spend to produce one kilogram of eggs?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (3, "120", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (3, " 3,265", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (3, "100", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (3, "10", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (1, 3);

# Question 4
INSERT INTO Questions (Question) VALUES ("How many eggs are thrown away every day in Metro Vancouver?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (4, "70", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (4, "30,000", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (4, "320", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (4, "3", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (1, 4);

# Question 5
INSERT INTO Questions (Question) VALUES ("How many liters of water do we spend to produce one kilogram of butter?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (5, "70,000", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (5, "5,553", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (5, "32", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (5, "15", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (1, 5);


# Questions Planet Fruit Fortress Session #############################
# Question 1 and answers
INSERT INTO Questions (Question) VALUES ("How many apples are thrown away every day in Metro Vancouver?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (6, "55,000", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (6, "962", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (6, "32,000", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (6, "100", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (2, 6);

# Question 2 and answers
INSERT INTO Questions (Question) VALUES ("How many liters of water do we spend to produce one kilogram of fruits?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (7, "70", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (7, "962", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (7, "32", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (7, "15", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (2, 7);

# Question 3 and answers
INSERT INTO Questions (Question) VALUES ("How does a lettuce survive any longer?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (8, "Singing!", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (8, "Putting into a cup of water outside fridge, as a living being", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (8, "Not eating it.", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (8, "Between -23 and -29 degrees Celsius", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (2, 8);

# Question 4 and answers
INSERT INTO Questions (Question) VALUES ("How can you make bananas last longer?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (9, "Putting into the fridge", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (9, "Cover the crown of a banana bunch in plastic wrap", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (9, "Eating it", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (9, "Between -23 and -29 degrees Celsius", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (2, 9);

# Question 5 and answers
INSERT INTO Questions (Question) VALUES ("Where you should store your apples?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (10, "In the fruit bowl", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (10, "In a plastic bag in the fridge, away from the fruit bowl", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (10, "On the floor", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (10, "In my stomach", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (2, 10);


# Questions Planet Pastry Palace Session #############################
# Question 1 and answers
INSERT INTO Questions (Question) VALUES ("Are pastries compostable?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (11, "Yes!", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (11, "No!", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (11, "Maybe?", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (11, "YesssnnnOOOttt suure...", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (3, 11);

# Question 2 and answers
INSERT INTO Questions (Question) VALUES ("How many liters of water do we spend to produce one kilogram of cereals?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (12, "70", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (12, "23", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (12, "0", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (12, "1,644", 1);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (3, 12);

# Question 3 and answers
INSERT INTO Questions (Question) VALUES ("How many loaves of bread are thrown away every day in Metro Vancouver?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (13, "70,000", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (13, "962", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (13, "32,000", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (13, "Between 100 and 200", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (3, 13);

# Question 4 and answers
INSERT INTO Questions (Question) VALUES ("Which of these pastries are wasted the most?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (14, "Apple pie", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (14, "Bread", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (14, "Croissant", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (14, "Pretzel", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (3, 14);

# Question 5 and answers
INSERT INTO Questions (Question) VALUES ("Who are the biggest responsible for food waste?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (15, "Retail Stores", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (15, "Processing", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (15, "Restaurants", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (15, "Consumers", 1);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (3, 15);


# Questions Planet Meat Mansion Session #############################
# Question 1 and answers
INSERT INTO Questions (Question) VALUES ("How many liters of water do we spend to produce one kilogram of pig meat?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (16, "5,988", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (16, "962", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (16, "32", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (16, "Between 10 to 20", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (4, 16);

# Question 2 and answers
INSERT INTO Questions (Question) VALUES ("How many liters of water do we spend to produce one kilogram of bovine meat?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (17, "700", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (17, "15,415", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (17, "32", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (17, "1,000", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (4, 17);

# Question 3 and answers
INSERT INTO Questions (Question) VALUES ("What are the foods most wasted in schools?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (18, "Candies", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (18, "Meat", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (18, "Eggs", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (18, "Vegetables", 1);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (4, 18);

# Question 4 and answers
INSERT INTO Questions (Question) VALUES ("At what temperature should meat be frozen?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (19, "Between -10 and -15 degrees Celsius", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (19, "Between 0 and 5 degrees Celsius", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (19, "Between 10 and 15 degrees Celsius", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (19, "Between -23 and -29 degrees Celsius", 1);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (4, 19);

# Question 5 and answers
INSERT INTO Questions (Question) VALUES ("How much percentage of food is thrown away in schools?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (20, "50%", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (20, "27%", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (20, "80%", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (20, "5%", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (4, 20);

#SELECT * FROM Questions;
#SELECT * FROM Answers;


# Levels Session #############################
# Planet 1
INSERT INTO Levels (idPlanet, idQuestion) VALUES (1, 1);
INSERT INTO Levels (idPlanet, idQuestion) VALUES (1, 2);
INSERT INTO Levels (idPlanet, idQuestion) VALUES (1, 3);
INSERT INTO Levels (idPlanet, idQuestion) VALUES (1, 4);
INSERT INTO Levels (idPlanet, idQuestion) VALUES (1, 5);

# Planet 2
INSERT INTO Levels (idPlanet, idQuestion) VALUES (2, 6);
INSERT INTO Levels (idPlanet, idQuestion) VALUES (2, 7);
INSERT INTO Levels (idPlanet, idQuestion) VALUES (2, 8);
INSERT INTO Levels (idPlanet, idQuestion) VALUES (2, 9);
INSERT INTO Levels (idPlanet, idQuestion) VALUES (2, 10);

# Planet 3
INSERT INTO Levels (idPlanet, idQuestion) VALUES (3, 11);
INSERT INTO Levels (idPlanet, idQuestion) VALUES (3, 12);
INSERT INTO Levels (idPlanet, idQuestion) VALUES (3, 13);
INSERT INTO Levels (idPlanet, idQuestion) VALUES (3, 14);
INSERT INTO Levels (idPlanet, idQuestion) VALUES (3, 15);

# Planet 4
INSERT INTO Levels (idPlanet, idQuestion) VALUES (4, 16);
INSERT INTO Levels (idPlanet, idQuestion) VALUES (4, 17);
INSERT INTO Levels (idPlanet, idQuestion) VALUES (4, 18);
INSERT INTO Levels (idPlanet, idQuestion) VALUES (4, 19);
INSERT INTO Levels (idPlanet, idQuestion) VALUES (4, 20);

#SELECT * FROM Levels;

#select * from Answers WHERE idQuestion = 1;



#INSERT INTO game (idPlayer, lastLevelPlayed, game_start, game_end, wins, loses) VALUES (2, 1, NOW(), NOW(), 2, 2);
#INSERT INTO game (idPlayer, lastLevelPlayed, game_start, game_end, wins, loses) VALUES (1, 1, NOW(), NOW(), 3, 2);
#UPDATE game SET lastLevelPlayed = 3 WHERE idGame = 1;
##SELECT * FROM game;
#DELETE FROM game WHERE idGame = 3;

#UPDATE game SET game_end = NOW() WHERE idGame = 2;

##SELECT stamps FROM players WHERE idPlayer = 2;

# Show the genre of the avatar from player rafa
##SELECT avatar.genre FROM players INNER JOIN avatar ON players.idPlayer=avatar.Players_idPlayer WHERE players.username="rafa";

# Show the acessory of avatar from player rafa
##SELECT accessory.accessory_style FROM ((players INNER JOIN avatar ON players.idPlayer=avatar.Players_idPlayer) INNER JOIN accessory ON avatar.Accessory_idAccessory=accessory.idAccessory) WHERE players.username="rafa";

# show question from cori game
##SELECT Question FROM ((players INNER JOIN game ON players.idPlayer=game.idPlayer) INNER JOIN levels ON levels.idLevel=game.lastLevelPlayed INNER JOIN questions ON questions.idQuestion=levels.idQuestion) WHERE players.username="cori";

# show answer from cori game
##SELECT answer FROM ((players INNER JOIN game ON players.idPlayer=game.idPlayer) INNER JOIN levels ON levels.idLevel=game.lastLevelPlayed INNER JOIN questions ON questions.idQuestion=levels.idQuestion INNER JOIN answers ON questions.idQuestion=answers.idQuestion) WHERE players.username="cori";

##SELECT pla.Planet_name, ac.accessory_style, av.genre, tp.top_color, pl.email FROM planets pla, game gm, accessory ac, avatar av, top tp, players pl, levels lv WHERE pl.idPlayer=gm.idPlayer AND gm.lastLevelPlayed=lv.idLevel AND pla.idPlanet=lv.idPlanet AND pl.idPlayer=av.Players_idPlayer AND av.Accessory_idAccessory=ac.idAccessory AND av.Top_idTop=tp.idTop AND pl.username="cori";


#select p.idPlanet, p.Planet_name, q.Question, a.answer, a.correct from planets p, levels l, questions q, answers a  WHERE l.idPlanet=p.idPlanet AND l.idQuestion=q.idQuestion AND q.idQuestion=a.idQuestion AND p.idPlanet=1;

select * from Skin;