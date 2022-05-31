SELECT DISTINCT Movie_Title,genre, released_year,runtime,director,star1,imdb_rating
FROM Movie_Fact as f JOIN dsT2 as a ON f.movie_id=a.MovieId where imdb_rating in(
  SELECT imdb_rating
  FROM Movie_Fact where imdb_rating>=8.5)