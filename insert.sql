-- Active: 1740510208142@@127.0.0.1@1234@CinemaDB
DROP DATABASE IF EXISTS DEV_DB;
USE CinemaDB;

LOAD DATA INFILE "/app/cleaned_project_data/movies.csv" INTO TABLE Movies FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE "/app/cleaned_project_data/directors.csv" INTO TABLE Directors FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE "/app/cleaned_project_data/genres.csv" INTO TABLE Genres FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE "/app/cleaned_project_data/languages.csv" INTO TABLE Languages FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE "/app/cleaned_project_data/movies_directors_pivot.csv" INTO TABLE Movies_Directors_Pivot FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE "/app/cleaned_project_data/movies_languages_pivot.csv" INTO TABLE Movies_Languages_Pivot FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE "/app/cleaned_project_data/movies_writers_pivot.csv" INTO TABLE Movies_Writers_Pivot FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE "/app/cleaned_project_data/ratings.csv" INTO TABLE Ratings FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE "/app/cleaned_project_data/writers.csv" INTO TABLE Writers FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 LINES;