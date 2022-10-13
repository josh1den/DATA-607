/*
Create tables
*/

-- Create friends table
CREATE TABLE friends (
  id SERIAL PRIMARY KEY,
  name TEXT,
);

-- Insert names into friends table
INSERT INTO friends (name)
VALUES
("Bianca"),
("Jason"),
("Henric"),
("Hannelore"),
("Andy");

-- Create movies table
CREATE TABLE movies (
id SERIAL PRIMARY KEY,
title VARCHAR(40),
genre VARCHAR(10))

-- Insert titles and genres into movies table
INSERT INTO movies (title, genre)
VALUES
("Nope", "Horror"),
("Elvis", "Drama"),
("Top Gun", "Action"),
("Prey", "Horror"),
("Jurassic World", "Action")
("Bullet Train", "Action");

-- Create ratings table
CREATE TABLE ratings (
  id SERIAL,
  friend_id INT,
  movie_id INT,
  rating SMALLINT);

-- Add entries into ratings table
INSERT INTO ratings (friend_id, movie_id, rating)
VALUES
(1, 1, 5),
(1, 2, 3),
(1, 4, 5),
(1, 3, 4),
(1, 5, 1),
(3, 1, 5),
(3, 4, 5),
(3, 3, 4),
(5, 4, 4),
(5, 3, 4),
(5, 1, 4),
(2, 2, 2),
(2, 3, 5),
(4, 4, 4),
(4, 5, 2),
(4, 3, 5),
(1, 6, 4),
(2, 6, 4);

-- Write the SQL query to join the three tables
SELECT f.name, m.title, m.genre, r.rating
FROM friends as f
JOIN ratings as r
ON f.id = r.friend_id
JOIN movies as m
ON m.id = r.movie_id
ORDER BY 1,2;
