# Compare the movie count from the 2000s to the 2010s to the count from 2011 to 2020.
SELECT
    CASE
        WHEN publication_year BETWEEN 2000 AND 2010 THEN '2000-2010'
        WHEN publication_year BETWEEN 2011 AND 2020 THEN '2011-2020'
    END AS decade,
    COUNT(*) AS movie_count
FROM Movies
WHERE publication_year BETWEEN 2000 AND 2020
GROUP BY decade;

# Find out how many directors have more awards won than the number of years they've been active
SELECT COUNT(DISTINCT `Directors`.director_name)
FROM `Directors` WHERE awards_won > years_active;

# Find the top 3 most popular genres in the 2010s
SELECT genres.genre_name, COUNT(movies.movie_id) AS movie_count
FROM Movies
JOIN Genres ON Movies.genre_id = Genres.genre_id
WHERE Movies.publication_year BETWEEN 2010 AND 2019
GROUP BY genres.genre_name
ORDER BY movie_count DESC
LIMIT 3;

# Get the list of movies not in english
SELECT Movies.title
FROM `Movies`
WHERE Movies.movie_id NOT IN (
    SELECT Movies_Languages_Pivot.movie_id
    FROM Movies_Languages_Pivot
    JOIN Languages ON Movies_Languages_Pivot.language_id = Languages.language_id
    WHERE Languages.language_name LIKE '%English%'
);

# Get each movies title and its genre
SELECT Movies.title, Genres.genre_name
FROM Movies
JOIN Genres ON Movies.genre_id = Genres.genre_id;

# Get the list of movies with more than 5000 votes for their ratings
SELECT ratings.votes
FROM ratings
WHERE ratings.votes > 5000;

# Get the number of movies that have a rating of 8.0 or higher
SELECT COUNT(*)
FROM Ratings
WHERE movie_rank >= 8.0;

# Get the list of movies with a rating higher than the average rating
SELECT movie_id, movie_rank, votes, rank_distribution
FROM Ratings
WHERE movie_rank > (
    SELECT AVG(movie_rank)
    FROM Ratings
);

# Get list of each movie's title and its director's name
SELECT Movies.title, Directors.director_name
FROM `Movies`
JOIN Movies_Directors_Pivot ON Movies.movie_id = Movies_Directors_Pivot.movie_id
JOIN Directors ON Movies_Directors_Pivot.director_id = Directors.director_id;

# List movies with a genre of Action and their writer
SELECT Movies.title, Writers.writer_name, Genres.genre_name
FROM Movies
JOIN Genres ON Movies.genre_id = Genres.genre_id
JOIN Movies_Writers_Pivot ON Movies.movie_id = Movies_Writers_Pivot.movie_id
JOIN Writers ON Movies_Writers_Pivot.writer_id = Writers.writer_id
WHERE Genres.genre_name = 'Action';
