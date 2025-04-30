-- Query to get all movies
SELECT * FROM Movies;

-- Query to get movies with a rating greater than 8.8
SELECT * FROM Movies WHERE Rating > 8.8;

-- Query to get the average rating per genre
SELECT Genre, AVG(Rating)
FROM Movies
GROUP BY Genre;

-- Query to join Movies and Actors tables
SELECT Movies.Title, Actors.ActorName
FROM Movies
INNER JOIN Actors ON Movies.ActorID = Actors.ActorID;
