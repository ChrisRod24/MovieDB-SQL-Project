CREATE TABLE Movies (
    MovieID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(100),
    Genre VARCHAR(50),
    ReleaseYear INT,
    Rating DECIMAL(3, 1),
    ActorID INT
);

CREATE TABLE Actors (
    ActorID INT PRIMARY KEY,
    ActorName VARCHAR(100)
);
