SELECT DISTINCT Movie_Title,genre, released_year,runtime,director,star1,AVG(imdb_rating ) OVER(PARTITION BY a.director,a.star1) 
AS "AVG imdb_rating"
FROM Movie_Fact as f JOIN dsT2 as a ON f.movie_id=a.MovieId where imdb_rating in(
  SELECT imdb_rating
  FROM Movie_Fact where imdb_rating>=8.5)
AND released_year BETWEEN 1991 AND 1999
order by imdb_rating DESC