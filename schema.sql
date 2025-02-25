CREATE DATABASE IF NOT EXISTS CinemaDB;
USE CinemaDB;

-- Schema
CREATE TABLE IF NOT EXISTS Movies (
    movie_id INT PRIMARY KEY,
    title VARCHAR(255),
    publication_year INT,
    genre_id INT,
    FOREIGN KEY (genre_id) REFERENCES Genres(genre_id)
);

CREATE TABLE IF NOT EXISTS Genres (
    genre_id INT PRIMARY KEY AUTO_INCREMENT,
    genre_name VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS Languages (
    language_id INT PRIMARY KEY AUTO_INCREMENT,
    language_name VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS Movies_Languages_Pivot (
    pivot_id INT PRIMARY KEY AUTO_INCREMENT,
    movie_id INT,
    language_id INT,
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id),
    FOREIGN KEY (language_id) REFERENCES Languages(language_id)
);

CREATE TABLE IF NOT EXISTS Writers (
    writer_id INT PRIMARY KEY AUTO_INCREMENT,
    writer_name VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS Movies_Writers_Pivot (
    pivot_id INT PRIMARY KEY AUTO_INCREMENT,
    movie_id INT,
    writer_id INT,
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id),
    FOREIGN KEY (writer_id) REFERENCES Writers(writer_id)
);

CREATE TABLE IF NOT EXISTS Directors (
    director_id INT PRIMARY KEY AUTO_INCREMENT,
    director_name VARCHAR(255),
    awards_won INT,
    years_active INT
);

CREATE TABLE IF NOT EXISTS Movies_Directors_Pivot (
    pivot_id INT PRIMARY KEY AUTO_INCREMENT,
    movie_id INT,
    director_id INT,
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id),
    FOREIGN KEY (director_id) REFERENCES Directors(director_id)
);