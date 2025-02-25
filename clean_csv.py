import csv
import random

# directors_movies_p = []


# def clean_d_m_p():
#     with open("./CS418-ProjectData/movies2writers.csv", "r") as f:
#         reader = list(csv.reader(f))
#         for i in range(1, len(reader)):
#             row = reader[i]
#             row.insert(0, i)

#             directors_movies_p.append(row)
                

#     csv.writer(open("./cleaned_project_data/movies_writers_pivot.csv", "w", newline="")).writerows(directors_movies_p)


# movies = []
# with open("./cleaned_project_data/movies.csv", "r") as f:
#     reader = csv.reader(f)
#     header = next(reader)
#     header.append("genre_id")
#     movies.append(header)
    
#     reader = list(reader)

#     for row in reader:
#         row.append(random.randint(1, 19))

#         movies.append(row)

# csv.writer(open("./cleaned_project_data/movies.csv", "w", newline="")).writerows(movies)


# loop over movies.csv
# get movie_id
# loop over languages.csv
# get movie_id from Languages.csv
# if movie_id == movie_id
# append language_id and movie_id to pivot table
# write pivot table to csv

# languages = []

# with open("./cleaned_project_data/languages.csv", "r") as f:
#     r = list(csv.reader(f))
#     for row in r:
#         languages.append(row[1])

# with open("./CS418-ProjectData/Languages.csv", "r") as f:
#     l = csv.reader(f)
#     next(l)
#     l = list(l)
#     i = 1
#     for row in l:
#         row = row[1:]

#         movie_id, language = row
#         print(language)
#         language_id = languages.index(language)

#         # write movie_id and language_id to pivot table
#         csv.writer(open("./cleaned_project_data/movies_languages_pivot.csv", "a", newline="")).writerows([[i, movie_id, language_id]])
#         i+=1



# movies = []

# with open("./cleaned_project_data/movies.csv", "r") as f:
#     r = list(csv.reader(f))
#     for row in r:
#         movies.append([*row[0:3], row[4]])

# with open("./cleaned_project_data/movies.csv", "w", newline="") as f:
#     csv.writer(f).writerows(movies) 

# directors = []

# with open("./cleaned_project_data/movies_directors_pivot.csv", "r") as f:
#     r = csv.reader(f)
#     next(r)
#     for row in list(r):
#         directors.append([row[0], row[1], int(row[2]) - 99])

# csv.writer(open("./cleaned_project_data/movies_directors_pivot.csv", "w", newline="")).writerows(directors)