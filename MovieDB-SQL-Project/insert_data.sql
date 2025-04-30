INSERT INTO Actors (ActorID, ActorName)
VALUES
    (1, 'Morgan Freeman'),
    (2, 'Christian Bale'),
    (3, 'Leonardo DiCaprio'),
    (4, 'Keanu Reeves');

INSERT INTO Movies (Title, Genre, ReleaseYear, Rating, ActorID)
VALUES 
    ('The Shawshank Redemption', 'Drama', 1994, 9.3, 1),
    ('The Dark Knight', 'Action', 2008, 9.0, 2),
    ('Inception', 'Sci-Fi', 2010, 8.8, 3),
    ('The Matrix', 'Sci-Fi', 1999, 8.7, 4);
