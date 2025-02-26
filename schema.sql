CREATE DATABASE IF NOT EXISTS CinemaDB;
USE CinemaDB;

-- Schema
CREATE TABLE IF NOT EXISTS Genres (
    genre_id INT PRIMARY KEY AUTO_INCREMENT,
    genre_name VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS Movies (
    movie_id INT PRIMARY KEY,
    title VARCHAR(255),
    publication_year INT,
    genre_id INT,
    FOREIGN KEY (genre_id) REFERENCES Genres(genre_id)
);

CREATE TABLE IF NOT EXISTS Languages (
    language_id INT PRIMARY KEY AUTO_INCREMENT,
    language_name VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS Movies_Languages_Pivot (
    pivot_id INT PRIMARY KEY AUTO_INCREMENT,
    movie_id INT NOT NULL,
    language_id INT NOT NULL,
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id),
    FOREIGN KEY (language_id) REFERENCES Languages(language_id)
);

CREATE TABLE IF NOT EXISTS Writers (
    writer_id INT PRIMARY KEY AUTO_INCREMENT,
    writer_name VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS Movies_Writers_Pivot (
    pivot_id INT PRIMARY KEY AUTO_INCREMENT,
    movie_id INT NOT NULL,
    writer_id INT NOT NULL,
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id),
    FOREIGN KEY (writer_id) REFERENCES Writers(writer_id)
);

CREATE TABLE IF NOT EXISTS Directors (
    director_id INT PRIMARY KEY AUTO_INCREMENT,
    director_name VARCHAR(255) NOT NULL,
    awards_won INT NOT NULL DEFAULT 0,
    years_active INT NOT NULL DEFAULT 0
);

CREATE TABLE IF NOT EXISTS Movies_Directors_Pivot (
    pivot_id INT PRIMARY KEY AUTO_INCREMENT,
    movie_id INT NOT NULL,
    director_id INT NOT NULL,
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id),
    FOREIGN KEY (director_id) REFERENCES Directors(director_id)
);

CREATE TABLE IF NOT EXISTS Ratings (
    rating_id INT PRIMARY KEY AUTO_INCREMENT,
    movie_id INT NOT NULL,
    movie_rank DECIMAL(3, 1) NOT NULL,
    votes INT NOT NULL,
    rank_distribution INT NOT NULL,
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id)
);
