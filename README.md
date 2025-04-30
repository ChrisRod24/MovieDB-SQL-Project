# MovieDB SQL Project

## Project Description
This project demonstrates the creation and analysis of a movie database using SQL. The database contains two tables: **Movies** and **Actors**. The goal of this project is to showcase the ability to:
- Create a database and tables.
- Insert sample data into the database.
- Run SQL queries to analyze the data (e.g., filtering, sorting, grouping, joining).

## Files in This Project
- **`create_database.sql`**: Script to create the database `MovieDB`.
- **`create_tables.sql`**: Script to create the `Movies` and `Actors` tables.
- **`insert_data.sql`**: Script to insert sample data into the `Movies` and `Actors` tables.
- **`run_queries.sql`**: Script containing SQL queries to analyze the data.

## How to Set Up and Run the Project

### Step 1: Create the Database
1. Open MySQL Workbench or use the MySQL command line.
2. Run `create_database.sql` to create the `MovieDB` database.

   ```sql
   -- Run this SQL code to create the database
   CREATE DATABASE MovieDB;

Step 2: Create the Tables
After creating the database, run create_tables.sql to create the Movies and Actors tables.

-- Run this SQL code to create the tables
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

Step 3: Insert Sample Data
Run insert_data.sql to insert sample data into the Movies and Actors tables.

-- Run this SQL code to insert data
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

Step 4: Run Queries and Analyze the Data
Run run_queries.sql to perform queries on the data. This script contains several queries to analyze the movies and their ratings.

-- Run this SQL code to analyze the data

-- Get all movies
SELECT * FROM Movies;

-- Get movies with a rating greater than 8.8
SELECT * FROM Movies WHERE Rating > 8.8;

-- Get the average rating per genre
SELECT Genre, AVG(Rating)
FROM Movies
GROUP BY Genre;

-- Get the highest-rated movie in each genre
SELECT Genre, Title, Rating
FROM Movies
WHERE Rating = (SELECT MAX(Rating) FROM Movies WHERE Genre = Movies.Genre);

-- Join Movies and Actors tables to display movie titles and actor names
SELECT Movies.Title, Actors.ActorName
FROM Movies
INNER JOIN Actors ON Movies.ActorID = Actors.ActorID;

## Example Output
The queries will return results like:
- Total number of movies in the database.
- Average rating per genre.
- The highest-rated movie in each genre.
- Movie titles with their associated actors.

### Example of `SELECT * FROM Movies;`:
| MovieID | Title                      | Genre   | ReleaseYear | Rating |
|---------|----------------------------|---------|-------------|--------|
| 1       | The Shawshank Redemption    | Drama   | 1994        | 9.3    |
| 2       | The Dark Knight             | Action  | 2008        | 9.0    |
| 3       | Inception                   | Sci-Fi  | 2010        | 8.8    |
| 4       | The Matrix                  | Sci-Fi  | 1999        | 8.7    |

### Example of `SELECT Genre, AVG(Rating) FROM Movies GROUP BY Genre;`:
| Genre   | AVG(Rating) |
|---------|-------------|
| Drama   | 9.15        |
| Action  | 9.0         |
| Sci-Fi  | 8.75        |

### Example of `SELECT Genre, Title, Rating FROM Movies WHERE Rating = (SELECT MAX(Rating) FROM Movies WHERE Genre = Movies.Genre);`:
| Genre   | Title                      | Rating |
|---------|----------------------------|--------|
| Drama   | The Shawshank Redemption    | 9.3    |
| Action  | The Dark Knight             | 9.0    |
| Sci-Fi  | Inception                   | 8.8    |

### Example of `SELECT Movies.Title, Actors.ActorName FROM Movies INNER JOIN Actors ON Movies.ActorID = Actors.ActorID;`:
| Title                      | ActorName            |
|----------------------------|----------------------|
| The Shawshank Redemption    | Morgan Freeman       |
| The Dark Knight             | Christian Bale       |
| Inception                   | Leonardo DiCaprio    |
| The Matrix                  | Keanu Reeves         |
