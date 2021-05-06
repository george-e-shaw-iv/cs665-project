LOCK TABLES `album` WRITE;
INSERT INTO `album` VALUES (1,'ye','A description.'),(2,'The Light pack','A description');
UNLOCK TABLES;

LOCK TABLES `artist` WRITE;
INSERT INTO `artist` VALUES (1,'Kanye West','Strange guy'),(2,'Joey Bada$$','Good Rapper');
UNLOCK TABLES;

LOCK TABLES `genre` WRITE;
INSERT INTO `genre` VALUES (1,'Rap',NULL);
UNLOCK TABLES;

LOCK TABLES `track` WRITE;
INSERT INTO `track` VALUES (1,'I Thought About Killing You',1,1,'artists/Kanye_West/albums/ye/tracks/I_Thought_About_Killing_You.mp3'),(2,'Yikes',1,1,'artists/Kanye_West/albums/ye/tracks/Yikes.mp3'),(3,'All Mine',1,1,'artists/Kanye_West/albums/ye/tracks/All_Mine.mp3'),(4,'Wouldn\'t Leave',1,1,'artists/Kanye_West/albums/ye/tracks/Wouldnt_Leave.mp3'),(5,'No Mistakes',1,1,'artists/Kanye_West/albums/ye/tracks/No_Mistakes.mp3'),(6,'Ghost Town',1,1,'artists/Kanye_West/albums/ye/tracks/Ghost_Town.mp3'),(7,'Violent Crimes',1,1,'artists/Kanye_West/albums/ye/tracks/Violent_Crimes.mp3'),(8,'The Light',2,1,'artists/Joey_Bada$$/albums/The_Light_Pack/tracks/The_Light.mp3'),(9,'No Explanation',2,1,'artists/Joey_Bada$$/albums/The_Light/tracks/No_Explanation.mp3'),(10,'Shine',2,1,'artists/Joey_Bada$$/albums/The_Light_Pack/tracks/Shine.mp3');
UNLOCK TABLES;

LOCK TABLES `created` WRITE;
INSERT INTO `created` VALUES (1,1,1),(1,2,1),(1,3,1),(1,4,1),(1,5,1),(1,6,1),(1,7,1),(2,8,1),(2,9,1),(2,10,1);
UNLOCK TABLES;

LOCK TABLES `user` WRITE;
INSERT INTO `user` VALUES (1,'George Shaw','geshaw1@shockers.wichita.edu','some_hash'),(2,'Austin Major','n675q967@shockers.wichita.edu','some_hash');
UNLOCK TABLES;

LOCK TABLES `follows` WRITE;
INSERT INTO `follows` VALUES (1,2),(2,1);
UNLOCK TABLES;

LOCK TABLES `library` WRITE;
INSERT INTO `library` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(2,7),(2,8),(2,9),(2,10);
UNLOCK TABLES;

LOCK TABLES `podcast_creator` WRITE;
INSERT INTO `podcast_creator` VALUES (1,'Ben Gilbert and David Rosenthal','A bio'),(2,'iHeartRadio','A bio');
UNLOCK TABLES;

LOCK TABLES `podcast_show` WRITE;
INSERT INTO `podcast_show` VALUES (1,'Acquired','A description',1),(2,'Stuff You Should Know','A description',2);
UNLOCK TABLES;

LOCK TABLES `podcast_episode` WRITE;
INSERT INTO `podcast_episode` VALUES (1,'Epsiode 1','A description',1,1,'podcasts/Acquired/Episode_1.mp3'),(2,'Episode 2','A description',1,1,'podcasts/Acquired/Episode_2.mp3'),(3,'Christmas Special','A description',1,2,'podcasts/Stuff_You_Should_Know/Christmas_Special.mp3');
UNLOCK TABLES;

LOCK TABLES `saved_podcasts` WRITE;
INSERT INTO `saved_podcasts` VALUES (1,1),(1,2),(2,3);
UNLOCK TABLES;