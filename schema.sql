CREATE TABLE IF NOT EXISTS album(
  id INT AUTO_INCREMENT NOT NULL,
  `name` VARCHAR(255) NOT NULL,
  description TEXT,
  
  PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS genre(
  id INT AUTO_INCREMENT NOT NULL,
  `name` VARCHAR(255) NOT NULL,
  description TEXT,
  
  PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS track(
  id INT AUTO_INCREMENT NOT NULL,
  title VARCHAR(255) NOT NULL,
  album_id INT NOT NULL,
  genre_id INT NOT NULL,
  
  # path refers to the file path (or S3 path) of the track.
  path VARCHAR(255) NOT NULL,
  
  PRIMARY KEY (id),
  FOREIGN KEY (album_id) REFERENCES album(id),
  FOREIGN KEY (genre_id) REFERENCES genre(id)
);

CREATE TABLE IF NOT EXISTS artist(
  id INT AUTO_INCREMENT NOT NULL,
  `name` VARCHAR(255) NOT NULL,
  bio TEXT,
  
  PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS created (
  artist_id INT NOT NULL,
  track_id INT NOT NULL,
  `primary` BOOLEAN NOT NULL DEFAULT FALSE,
  
  FOREIGN KEY (artist_id) REFERENCES artist(id),
  FOREIGN KEY (track_id) REFERENCES track(id)
);

CREATE TABLE IF NOT EXISTS podcast_creator (
  id INT AUTO_INCREMENT NOT NULL,
  `name` VARCHAR(255) NOT NULL,
  bio TEXT,
  
  PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS podcast_show (
  id INT AUTO_INCREMENT NOT NULL,
  `name` VARCHAR(255) NOT NULL,
  description TEXT,
  creator_id INT NOT NULL,
  
  PRIMARY KEY (id),
  FOREIGN KEY (creator_id) REFERENCES podcast_creator(id)
);

CREATE TABLE IF NOT EXISTS podcast_episode (
  id INT AUTO_INCREMENT NOT NULL,
  title VARCHAR(255) NOT NULL,
  description TEXT,
  season INT NOT NULL,
  show_id INT NOT NULL,
  
  # path refers to the file path (or S3 path) of the track.
  path VARCHAR(255) NOT NULL,
  
  PRIMARY KEY (id),
  FOREIGN KEY (show_id) REFERENCES podcast_show(id)
);

CREATE TABLE IF NOT EXISTS `user`(
  id INT AUTO_INCREMENT NOT NULL,
  `name` VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  `password_hash` VARCHAR(60) NOT NULL,
  
  PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS library (
  user_id INT NOT NULL,
  track_id INT NOT NULL,
  
  FOREIGN KEY (user_id) REFERENCES `user`(id),
  FOREIGN KEY (track_id) REFERENCES track(id)
);

CREATE TABLE IF NOT EXISTS saved_podcasts (
  user_id INT NOT NULL,
  podcast_id INT NOT NULL,
  
  FOREIGN KEY (user_id) REFERENCES `user`(id),
  FOREIGN KEY (podcast_id) REFERENCES podcast_episode(id)
);

CREATE TABLE IF NOT EXISTS follows (
  follower_user_id INT NOT NULL,
  followee_user_id INT NOT NULL,
  
  FOREIGN KEY (follower_user_id) REFERENCES `user`(id),
  FOREIGN KEY (followee_user_id) REFERENCES `user`(id)
);
