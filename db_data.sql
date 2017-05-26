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
INSERT INTO Accessory (accessory_style) VALUES ("wings");

#SELECT * FROM Accessory;

# Hair Session for girls #############################
INSERT INTO Hair (hair_style, hair_color) VALUES ("pigtails", "brown");
INSERT INTO Hair (hair_style, hair_color) VALUES ("pigtails", "black");
INSERT INTO Hair (hair_style, hair_color) VALUES ("pigtails", "blond");

INSERT INTO Hair (hair_style, hair_color) VALUES ("long", "brown");
INSERT INTO Hair (hair_style, hair_color) VALUES ("long", "black");
INSERT INTO Hair (hair_style, hair_color) VALUES ("long", "blond");

INSERT INTO Hair (hair_style, hair_color) VALUES ("braid", "brown");
INSERT INTO Hair (hair_style, hair_color) VALUES ("braid", "black");
INSERT INTO Hair (hair_style, hair_color) VALUES ("braid", "blond");

# Hair Session for boys #############################
INSERT INTO Hair (hair_style, hair_color) VALUES ("shrub", "brown");
INSERT INTO Hair (hair_style, hair_color) VALUES ("shrub", "black");
INSERT INTO Hair (hair_style, hair_color) VALUES ("shrub", "blond");

INSERT INTO Hair (hair_style, hair_color) VALUES ("goku", "brown");
INSERT INTO Hair (hair_style, hair_color) VALUES ("goku", "black");
INSERT INTO Hair (hair_style, hair_color) VALUES ("goku", "blond");

INSERT INTO Hair (hair_style, hair_color) VALUES ("short", "brown");
INSERT INTO Hair (hair_style, hair_color) VALUES ("short", "black");
INSERT INTO Hair (hair_style, hair_color) VALUES ("short", "blond");

#SELECT * FROM Hair;

# Bottom Session for girls #############################
INSERT INTO Bottom (bottom_style, bottom_color) VALUES ("default", "blue");
INSERT INTO Bottom (bottom_style, bottom_color) VALUES ("default", "red");
INSERT INTO Bottom (bottom_style, bottom_color) VALUES ("default", "green");

INSERT INTO Bottom (bottom_style, bottom_color) VALUES ("skirt", "blue");
INSERT INTO Bottom (bottom_style, bottom_color) VALUES ("skirt", "red");
INSERT INTO Bottom (bottom_style, bottom_color) VALUES ("skirt", "green");

INSERT INTO Bottom (bottom_style, bottom_color) VALUES ("jeans", "blue");
INSERT INTO Bottom (bottom_style, bottom_color) VALUES ("jeans", "red");
INSERT INTO Bottom (bottom_style, bottom_color) VALUES ("jeans", "green");

# Bottom Session for boys #############################
INSERT INTO Bottom (bottom_style, bottom_color) VALUES ("default", "blue");
INSERT INTO Bottom (bottom_style, bottom_color) VALUES ("default", "red");
INSERT INTO Bottom (bottom_style, bottom_color) VALUES ("default", "green");

INSERT INTO Bottom (bottom_style, bottom_color) VALUES ("pants", "blue");
INSERT INTO Bottom (bottom_style, bottom_color) VALUES ("pants", "red");
INSERT INTO Bottom (bottom_style, bottom_color) VALUES ("pants", "green");

INSERT INTO Bottom (bottom_style, bottom_color) VALUES ("shorts", "blue");
INSERT INTO Bottom (bottom_style, bottom_color) VALUES ("shorts", "red");
INSERT INTO Bottom (bottom_style, bottom_color) VALUES ("shorts", "green");

#SELECT * FROM Bottom;

# Top Session for girls #############################
INSERT INTO Top (top_style, top_color) VALUES ("default", "blue");
INSERT INTO Top (top_style, top_color) VALUES ("default", "red");
INSERT INTO Top (top_style, top_color) VALUES ("default", "green");

INSERT INTO Top (top_style, top_color) VALUES ("cp_Tshirt", "blue");
INSERT INTO Top (top_style, top_color) VALUES ("cp_Tshirt", "red");
INSERT INTO Top (top_style, top_color) VALUES ("cp_Tshirt", "green");

INSERT INTO Top (top_style, top_color) VALUES ("blouse", "blue");
INSERT INTO Top (top_style, top_color) VALUES ("blouse", "red");
INSERT INTO Top (top_style, top_color) VALUES ("blouse", "green");

# Top Session for boys #############################
INSERT INTO Top (top_style, top_color) VALUES ("default", "blue");
INSERT INTO Top (top_style, top_color) VALUES ("default", "red");
INSERT INTO Top (top_style, top_color) VALUES ("default", "green");

INSERT INTO Top (top_style, top_color) VALUES ("jacket", "blue");
INSERT INTO Top (top_style, top_color) VALUES ("jacket", "red");
INSERT INTO Top (top_style, top_color) VALUES ("jacket", "green");

INSERT INTO Top (top_style, top_color) VALUES ("cp_hoodie", "blue");
INSERT INTO Top (top_style, top_color) VALUES ("cp_hoodie", "red");
INSERT INTO Top (top_style, top_color) VALUES ("cp_hoodie", "green");

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
INSERT INTO Answers (idQuestion, answer, correct) VALUES (1, "1000", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (1, "100", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (1, "Got Milk?", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (1, 1);

# Question 2
INSERT INTO Questions (Question) VALUES ("How many liters of water do we use to produce one kilogram of milk?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (2, "20", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (2, "1,020", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (2, "200", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (2, "2000", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (1, 2);

# Question 3
INSERT INTO Questions (Question) VALUES ("How many liters of water do we use to produce one kilogram of eggs?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (3, "300000", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (3, "3,265", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (3, "300", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (3, "3000", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (1, 3);

# Question 4
INSERT INTO Questions (Question) VALUES ("How many eggs are thrown away every day in Metro Vancouver?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (4, "123", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (4, "30,000", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (4, "2340", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (4, "789", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (1, 4);

# Question 5
INSERT INTO Questions (Question) VALUES ("How many liters of water do we use to produce one kilogram of butter?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (5, "700", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (5, "5,553", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (5, "222", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (5, "4,545", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (1, 5);

# Question 6
INSERT INTO Questions (Question) VALUES ("What should you look at before buying milk?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (6, "Use By date", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (6, "What's milk?", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (6, "Moo?", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (6, "The cow", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (1, 6);

# Question 7
INSERT INTO Questions (Question) VALUES ("Where does milk belong?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (7, "In fridges", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (7, "Out", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (7, "Moo?", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (7, "In the cow?", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (1, 7);

# Question 8
INSERT INTO Questions (Question) VALUES ("Where in the fridge should you put milk?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (8, "Fridge shelf", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (8, "Outside", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (8, "The door", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (8, "Nowhere", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (1, 8);

# Question 9
INSERT INTO Questions (Question) VALUES ("How many months does ice cream last in freezer if you opened it?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (9, "1 to 2", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (9, "6", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (9, "12", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (9, "8", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (1, 9);

# Question 10
INSERT INTO Questions (Question) VALUES ("Where can you use old cheese?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (10, "Spaghetti", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (10, "In photos?", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (10, "Cheesy jokes", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (10, "Garbage", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (1, 10);


# Question 11
INSERT INTO Questions (Question) VALUES ("Where should you generally store your dairy products?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (11, "Refrigerator", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (11, "Balcony", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (11, "Oven", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (11, "Bag", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (1, 11);


# Question 12
INSERT INTO Questions (Question) VALUES ("Who is most responsible for food waste?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (12, "Consumers", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (12, "Vegans", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (12, "Dinosaurs", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (12, "Robots", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (1, 12);

# Question 13
INSERT INTO Questions (Question) VALUES ("What percentage of food is thrown away in schools?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (13, "27%", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (13, "99%", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (13, "88%", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (13, "0%", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (1, 13);

# Question 14
INSERT INTO Questions (Question) VALUES ("Expiration dates are used to help people know when not to eat dairy.");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (14, "True", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (14, "False", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (14, "Moo?", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (14, "Moo?", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (1, 14);



# Questions Planet Fruit Fortress Session #############################
# Question 1 and answers
INSERT INTO Questions (Question) VALUES ("How many apples are thrown away every day in Metro Vancouver?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (15, "55,000", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (15, "44,000", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (15, "33,000", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (15, "22,000", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (2, 15);

# Question 2 and answers
INSERT INTO Questions (Question) VALUES ("How many liters of water do we use to produce one kilogram of fruit?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (16, "900", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (16, "962", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (16, "90", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (16, "9,000", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (2, 16);

# Question 3 and answers
INSERT INTO Questions (Question) VALUES ("What can you place old lettuce in to make it crispier?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (17, "Ketchup", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (17, "Water", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (17, "Sadness", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (17, "It's trash!", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (2, 17);

# Question 4 and answers
INSERT INTO Questions (Question) VALUES ("How can you make bananas last longer?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (18, "Ask nicely?", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (18, "Wrap the top", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (18, "Split them!", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (18, "Stretch them?", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (2, 18);

# Question 5 and answers
INSERT INTO Questions (Question) VALUES ("Where should you leave apples?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (19, "iPhones", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (19, "In fridge", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (19, "The floor", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (19, "With Eve", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (2, 19);

# Question 6
INSERT INTO Questions (Question) VALUES ("Which of these foods can be made into a smoothie/shake?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (20, "Fruits", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (20, "Love", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (20, "Pie", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (20, "Bread", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (2, 20);

# Question 7
INSERT INTO Questions (Question) VALUES ("How can you reuse vegetable scraps?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (21, "Make soup", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (21, "Toss it", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (21, "Impossible!", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (21, "Dog food?", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (2, 21);

# Question 8
INSERT INTO Questions (Question) VALUES ("How can you save old vegetables?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (22, "Add water", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (22, "Burn it", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (22, "Toast it", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (22, "Kick it", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (2, 22);

# Question 9
INSERT INTO Questions (Question) VALUES ("You tell if fruits/veggies are fresh if they are:");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (23, "Bright & firm", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (23, "Browning", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (23, "Soggy", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (23, "Trendy", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (2, 23);

# Question 10
INSERT INTO Questions (Question) VALUES ("Which foods are most wasted in schools?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (24, "Vegetables", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (24, "Childhoods", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (24, "Eggs", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (24, "Pastry", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (2, 24);

# Question 11
INSERT INTO Questions (Question) VALUES ("Food waste means that food is... ");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (25, "Thrown out", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (25, "Difficult", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (25, "Complicated", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (25, "Wonderful", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (2, 25);

# Question 12
INSERT INTO Questions (Question) VALUES ("You can keep berries fresh with:");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (26, "Water", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (26, "Fashion", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (26, "Attitude", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (26, "Impossible!", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (2, 26);

# Question 13
INSERT INTO Questions (Question) VALUES ("How many liters of water do we use to produce one kilogram of vegetables?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (27, "322", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (27, "1", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (27, "204", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (27, "420", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (2, 27);

# Question 14
INSERT INTO Questions (Question) VALUES ("Perishable food lifespan can be prolonged by");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (28, "Freezing", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (28, "Medicine", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (28, "Trashing it", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (28, "Exercise", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (2, 28);


# Questions Planet Pastry Palace Session #############################
# Question 1 and answers
INSERT INTO Questions (Question) VALUES ("Can bread be composted?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (29, "Yes!", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (29, "No!", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (29, "Canada Post", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (29, "Impossible!", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (3, 29);

# Question 2 and answers
INSERT INTO Questions (Question) VALUES ("How many liters of water do we use to produce one kilogram of cereal?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (30, "70", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (30, "975", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (30, "1,250", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (30, "1,644", 1);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (3, 30);

# Question 3 and answers
INSERT INTO Questions (Question) VALUES ("How many loaves of bread are thrown away every day in Metro Vancouver?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (31, "70,000", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (31, "56,000", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (31, "32,000", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (31, "9,000", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (3, 31);

# Question 4 and answers
INSERT INTO Questions (Question) VALUES ("Which of these pastries are wasted the most?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (32, "Apple pie", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (32, "Bread", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (32, "Croissants", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (32, "Pretzels", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (3, 32);

# Question 5 and answers
INSERT INTO Questions (Question) VALUES ("Which of these are most responsible for food waste?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (33, "Stores", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (33, "Processing", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (33, "Restaurants", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (33, "Consumers", 1);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (3, 33);

# Question 6 and answers
INSERT INTO Questions (Question) VALUES ("Where should you keep bread you don't plan to eat for a while?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (34, "Thoughts", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (34, "Outside", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (34, "Roof", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (34, "Freezer", 1);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (3, 34);

# Question 7 and answers
INSERT INTO Questions (Question) VALUES ("You can you save bread that has become hard by splashing water on it, and then:");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (35, "Trashing it", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (35, "Calling 911", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (35, "Waiting", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (35, "Reheating", 1);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (3, 35);

# Question 8 and answers
INSERT INTO Questions (Question) VALUES ("What can you make from stale bread?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (36, "Potatoes", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (36, "Thumbelina", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (36, "Bricks", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (36, "Croutons", 1);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (3, 36);

# Question 9 and answers
INSERT INTO Questions (Question) VALUES ("Expiration dates use all but which of these phrases when labeling products?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (37, "Beware!", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (37, "Leap years", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (37, "Arriba!", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (37, "Sell By", 1);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (3, 37);

# Question 10 and answers
INSERT INTO Questions (Question) VALUES ("How much of the average landfill is just food waste?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (38, "0%", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (38, "50%", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (38, "75%", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (38, "25%", 1);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (3, 38);



# Questions Planet Meat Mansion Session #############################
# Question 1 and answers
INSERT INTO Questions (Question) VALUES ("How many liters of water do we use to produce one kilogram of pork?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (39, "5,988", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (39, "962", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (39, "7,678", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (39, "2,400", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (4, 39);

# Question 2 and answers
INSERT INTO Questions (Question) VALUES ("How many liters of water do we use to produce one kilogram of beef?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (40, "700", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (40, "15,415", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (40, "4,000", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (40, "1,000", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (4, 40);

# Question 3 and answers
INSERT INTO Questions (Question) VALUES ("What foods are the most wasted in schools?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (41, "Candies", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (41, "Meat", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (41, "Childhoods", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (41, "Vegetables", 1);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (4, 41);

# Question 4 and answers
INSERT INTO Questions (Question) VALUES ("Between what temperatures (degrees Celsius) should meat be frozen?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (42, "-10 to -15", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (42, "0 to 5", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (42, "10 to 15", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (42, "-23 to -29", 1);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (4, 42);

# Question 5 and answers
INSERT INTO Questions (Question) VALUES ("What percentage of food is thrown away in schools?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (43, "50%", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (43, "27%", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (43, "80%", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (43, "5%", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (4, 43);

# Question 6 and answers
INSERT INTO Questions (Question) VALUES ("Up to how many hours after buying meat should you put it in the fridge?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (44, "1", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (44, "2", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (44, "3", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (44, "4", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (4, 44);

# Question 7 and answers
INSERT INTO Questions (Question) VALUES ("Up to how many hours can you leave cooked meat outside of the fridge?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (45, "Forever!", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (45, "2", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (45, "1", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (45, "4", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (4, 45);

# Question 8 and answers
INSERT INTO Questions (Question) VALUES ("How long can meat be frozen before eating it?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (46, "1 year", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (46, "4-12 months", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (46, "2 years", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (46, "3 years", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (4, 46);

# Question 9 and answers
INSERT INTO Questions (Question) VALUES ("Up to how many days after buying should meat be cooked?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (47, "14", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (47, "2", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (47, "7", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (47, "28", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (4, 47);

# Question 10 and answers
INSERT INTO Questions (Question) VALUES ("You can keep meat fresh by wrapping it and:");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (48, "Waiting", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (48, "Refrigerating", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (48, "Unwrapping", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (48, "Praying", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (4, 48);


#SELECT * FROM Questions;
#SELECT * FROM Answers;


-- # Levels Session #############################
-- # Planet 1
-- INSERT INTO Levels (idPlanet, idQuestion) VALUES (1, 1);
-- INSERT INTO Levels (idPlanet, idQuestion) VALUES (1, 2);
-- INSERT INTO Levels (idPlanet, idQuestion) VALUES (1, 3);
-- INSERT INTO Levels (idPlanet, idQuestion) VALUES (1, 4);
-- INSERT INTO Levels (idPlanet, idQuestion) VALUES (1, 5);
--
-- # Planet 2
-- INSERT INTO Levels (idPlanet, idQuestion) VALUES (2, 6);
-- INSERT INTO Levels (idPlanet, idQuestion) VALUES (2, 7);
-- INSERT INTO Levels (idPlanet, idQuestion) VALUES (2, 8);
-- INSERT INTO Levels (idPlanet, idQuestion) VALUES (2, 9);
-- INSERT INTO Levels (idPlanet, idQuestion) VALUES (2, 10);
--
-- # Planet 3
-- INSERT INTO Levels (idPlanet, idQuestion) VALUES (3, 11);
-- INSERT INTO Levels (idPlanet, idQuestion) VALUES (3, 12);
-- INSERT INTO Levels (idPlanet, idQuestion) VALUES (3, 13);
-- INSERT INTO Levels (idPlanet, idQuestion) VALUES (3, 14);
-- INSERT INTO Levels (idPlanet, idQuestion) VALUES (3, 15);
--
-- # Planet 4
-- INSERT INTO Levels (idPlanet, idQuestion) VALUES (4, 16);
-- INSERT INTO Levels (idPlanet, idQuestion) VALUES (4, 17);
-- INSERT INTO Levels (idPlanet, idQuestion) VALUES (4, 18);
-- INSERT INTO Levels (idPlanet, idQuestion) VALUES (4, 19);
-- INSERT INTO Levels (idPlanet, idQuestion) VALUES (4, 20);

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

#select * from Skin;
