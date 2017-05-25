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

INSERT INTO Answers (idQuestion, answer, correct) VALUES (3, "They're egging it on", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (3, "3,265", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (3, "300", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (3, "3000", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (1, 3);

# Question 4
INSERT INTO Questions (Question) VALUES ("How many eggs are thrown away every day in Metro Vancouver?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (4, "123", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (4, "30,000", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (4, "Leggo my Eggo!", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (4, "789", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (1, 4);

# Question 5
INSERT INTO Questions (Question) VALUES ("How many liters of water do we use to produce one kilogram of butter?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (5, "Butter luck next time!", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (5, "5,553", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (5, "222", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (5, "I can't believe it's not butter!", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (1, 5);

# Question 6
INSERT INTO Questions (Question) VALUES ("What should you look at before buying milk?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (6, "'Use By' date", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (6, "What's milk?", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (6, "Udder satisfaction", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (6, "The cow", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (1, 6);

# Question 7
INSERT INTO Questions (Question) VALUES ("Where does milk belong?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (7, "In the fridge", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (7, "Out in the open", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (7, "Mooo", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (7, "Inside the cow?", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (1, 7);

# Question 8
INSERT INTO Questions (Question) VALUES ("Where in the fridge should you put milk?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (8, "Fridge shelf", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (8, "Not there", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (8, "Almost there", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (8, "Close enough", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (1, 8);

# Question 9
INSERT INTO Questions (Question) VALUES ("How many months does ice cream last in freezer if you opened it?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (9, "1 to 2", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (9, "6", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (9, "I scream for ice cream!", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (9, "8", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (1, 9);

# Question 10
INSERT INTO Questions (Question) VALUES ("Where can you use old cheese?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (10, "Spaghetti", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (10, "When taking photos?", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (10, "In cheesy jokes", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (10, "Throw it in the garbage", 0);

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
INSERT INTO Answers (idQuestion, answer, correct) VALUES (12, "Dinosaurs!", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (12, "Evil robots?", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (1, 12);

# Question 13
INSERT INTO Questions (Question) VALUES ("What percentage of food is thrown away in schools?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (13, "27", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (13, "99", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (13, "88", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (13, "Not food, only my childhood", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (1, 13);

# Question 14
INSERT INTO Questions (Question) VALUES ("Expiration dates are used to help people know when not to eat food");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (14, "True", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (14, "False", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (14, "I hate dates; prunes are better!", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (14, "Rules are made to be broken", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (1, 14);



# Questions Planet Fruit Fortress Session #############################
# Question 1 and answers
INSERT INTO Questions (Question) VALUES ("How many apples are thrown away every day in Metro Vancouver?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (15, "55,000", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (15, "44,000", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (15, "33,000", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (15, "How do you like them apples?", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (2, 15);

# Question 2 and answers
INSERT INTO Questions (Question) VALUES ("How many liters of water do we use to produce one kilogram of fruit?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (16, "900", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (16, "962", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (16, "90", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (16, "It's a fruitless endeavour", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (2, 16);

# Question 3 and answers
INSERT INTO Questions (Question) VALUES ("How can you make lettuce last longer?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (17, "Talk to it", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (17, "Put in a cup of water", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (17, "Lettuce think about this", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (17, "Throw it in the garbage?", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (2, 17);

# Question 4 and answers
INSERT INTO Questions (Question) VALUES ("How can you make bananas last longer?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (18, "You can do that? That's bananas!", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (18, "Cover the top with plastic wrap", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (18, "Make like a banana and split!", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (18, "Not sure", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (2, 18);

# Question 5 and answers
INSERT INTO Questions (Question) VALUES ("Where should you store apples?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (19, "Like an iPhone?", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (19, "In a plastic bag in the fridge", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (19, "On the floor", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (19, "Give it to a woman named Eve", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (2, 19);

# Question 6
INSERT INTO Questions (Question) VALUES ("Which of these foods can be made into a smoothie/shake?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (20, "Fruits and Veggies", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (20, "Water AND bread?", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (20, "Water", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (20, "Bread", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (1, 20);

# Question 7
INSERT INTO Questions (Question) VALUES ("How can you reuse vegetable scraps?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (21, "Boil them into soup", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (21, "Tell your parents to throw it away", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (21, "Tell it to go away, please and thank you", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (21, "Feed it to the dog?", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (1, 21);

# Question 8
INSERT INTO Questions (Question) VALUES ("How can you save old vegetables?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (22, "Add water", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (22, "Burn it", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (22, "Toast it", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (22, "Kick it", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (1, 22);

# Question 9
INSERT INTO Questions (Question) VALUES ("How can you tell if fruits/veggies are fresh?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (23, "They're bright and firm", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (23, "If some guy says so", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (23, "Just pretend", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (23, "If they're new to the neightbourhood", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (1, 23);

# Question 10
INSERT INTO Questions (Question) VALUES ("Which foods are most wasted in schools?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (24, "Vegetables", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (24, "Not food, only my childhood", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (24, "Eggs", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (24, "Pastry", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (1, 24);

# Question 11
INSERT INTO Questions (Question) VALUES ("Food waste is… ");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (25, "...Uneaten or spoiled food,", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (25, "...Also a waste of my time", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (25, "...Too complicated", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (25, "...Wonderful?", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (1, 25);

# Question 12
INSERT INTO Questions (Question) VALUES ("How can you keep berries fresh?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (26, "Wash (1/4 vinegar and 3/4 water)", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (26, "Razzle and dazzle them", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (26, "Clean them berry well", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (26, "It's impossible!", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (1, 26);

# Question 13
INSERT INTO Questions (Question) VALUES ("How many liters of water do we use to produce one kilogram of vegetables?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (27, "322", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (27, "1", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (27, "204", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (27, "I want veggies off my table", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (1, 27);

# Question 14
INSERT INTO Questions (Question) VALUES ("Perishable food lifespan can be prolonged by");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (28, "Freezing", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (28, "Modern medicine", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (28, "Throwing it away", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (28, "Diet and exercise", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (1, 28);


# Questions Planet Pastry Palace Session #############################
# Question 1 and answers
INSERT INTO Questions (Question) VALUES ("Can bread be composted?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (29, "Yes!", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (29, "No!", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (29, "What a loafsome question", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (29, "Perish the thought!", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (3, 29);

# Question 2 and answers
INSERT INTO Questions (Question) VALUES ("How many liters of water do we use to produce one kilogram of cereal?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (30, "70", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (30, "Are you cereal?", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (30, "That's grrrrrrreat!", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (30, "1,644", 1);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (3, 30);

# Question 3 and answers
INSERT INTO Questions (Question) VALUES ("How many loaves of bread are thrown away every day in Metro Vancouver?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (31, "70,000", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (31, "They're loafing around!", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (31, "32,000", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (31, "Between 100 and 200", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (3, 31);

# Question 4 and answers
INSERT INTO Questions (Question) VALUES ("Which of these pastries are wasted the most?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (32, "Apple pie", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (32, "Bread", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (32, "Croissant", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (32, "Pretzel", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (3, 32);

# Question 5 and answers
INSERT INTO Questions (Question) VALUES ("Which of these are most responsible for food waste?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (33, "Retail Stores", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (33, "Processing", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (33, "Restaurants", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (33, "Consumers", 1);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (3, 33);

# Question 6 and answers
INSERT INTO Questions (Question) VALUES ("Where should you keep bread if you won’t eat it for a while?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (34, "In your thoughts", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (34, "Out in the sun", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (34, "That's the yeast of my worries", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (34, "In the freezer", 1);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (3, 34);

# Question 7 and answers
INSERT INTO Questions (Question) VALUES ("How can you save bread that has become hard?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (35, "Perform CPR", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (35, "Call 911!", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (35, "Just wait?", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (35, "Splash water and reheat it (2-3 min)", 1);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (3, 35);

# Question 8 and answers
INSERT INTO Questions (Question) VALUES ("How can you use stale bread?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (36, "Take it out of its usual routine", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (36, "As a brick to build a wall", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (36, "Sell it for twice the price, call staleness a 'feature'", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (36, "As croutons or breadcrumbs", 1);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (3, 36);

# Question 9 and answers
INSERT INTO Questions (Question) VALUES ("Expiration dates use all but which of these phrases when labeling products?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (37, "Could you rephrase that?", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (37, "Leap years", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (37, "Who wants to play Jeopardy?", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (37, "Sell By", 1);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (3, 37);

# Question 10 and answers
INSERT INTO Questions (Question) VALUES ("How much of the average landfill is just food waste?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (38, "0% food waste, 100% my hopes and dreams", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (38, "50%", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (38, "75%", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (38, "25%", 1);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (3, 38);



# Questions Planet Meat Mansion Session #############################
# Question 1 and answers
INSERT INTO Questions (Question) VALUES ("How many liters of water do we use to produce one kilogram of pork?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (39, "5,988", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (39, "962", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (39, "They're as greedy as pigs!", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (39, "They hog ALL the water!", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (4, 39);

# Question 2 and answers
INSERT INTO Questions (Question) VALUES ("How many liters of water do we use to produce one kilogram of beef?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (40, "700", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (40, "15,415", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (40, "Don't have a cow, man!", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (40, "1,000", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (4, 40);

# Question 3 and answers
INSERT INTO Questions (Question) VALUES ("What foods are the most wasted in schools?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (41, "Candies", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (41, "Meat", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (41, "Not foods, only childhoods", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (41, "Vegetables", 1);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (4, 41);

# Question 4 and answers
INSERT INTO Questions (Question) VALUES ("At what temperature should meat be frozen?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (42, "Between -10 and -15 degrees C", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (42, "Between 0 and 5 degrees C", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (42, "Between 10 and 15 degrees C", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (42, "Between -23 and -29 degrees C", 1);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (4, 42);

# Question 5 and answers
INSERT INTO Questions (Question) VALUES ("What percentage of food is thrown away in schools?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (43, "50%", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (43, "27%", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (43, "80%", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (43, "5%, and also childrens' dreams", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (4, 43);

# Question 6 and answers
INSERT INTO Questions (Question) VALUES ("When should you put meat in the fridge?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (44, "When you need to beef up your supplies", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (44, "Up to 2 hours after buying it", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (44, "When you want to pig out", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (44, "It's a mis-steak!", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (4, 44);

# Question 7 and answers
INSERT INTO Questions (Question) VALUES ("How long can you leave cooked meat outside of the fridge?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (45, "Forever!", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (45, "Up to 2 hours", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (45, "Until it learns manners", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (45, "Only 30 minutes", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (4, 45);

# Question 8 and answers
INSERT INTO Questions (Question) VALUES ("How can you make meat edible for a long time?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (46, "Ask it nicely?", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (46, "Freeze and eat it within 4-12 months", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (46, "Leave it out in the sun", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (46, "Just leave it in the fridge", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (4, 46);

# Question 9 and answers
INSERT INTO Questions (Question) VALUES ("When should meat be cooked?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (47, "The next year", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (47, "Up to 2 days after buying it", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (47, "Up to 7 days after buying it", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (47, "Up to 30 days after buying it", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (4, 47);

# Question 10 and answers
INSERT INTO Questions (Question) VALUES ("How can you keep meat fresh for a short time?");

INSERT INTO Answers (idQuestion, answer, correct) VALUES (48, "Expose it to the underground scene", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (48, "Wrap securely and store it in the fridge", 1);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (48, "Keep it in front of a blowing fan", 0);
INSERT INTO Answers (idQuestion, answer, correct) VALUES (48, "Put it in water", 0);

INSERT INTO Levels (idPlanet, idQuestion) VALUES (4, 48);


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
