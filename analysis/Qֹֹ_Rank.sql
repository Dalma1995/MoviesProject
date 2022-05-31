SELECT movie_title,released_year,genre,runtime,imdb_rating, RANK() OVER(ORDER BY imdb_rating DESC) AS "RANK NO"
FROM Movie_Fact