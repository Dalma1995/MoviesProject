SELECT  genre, AVG(GROSS) OVER(PARTITION BY genre) as 'Average GROSS Crime Movies Under 120 Min' 
FROM Movie_Fact
WHERE Genre='Crime' and runtime<120 and released_year betWEEN 2016 and 2019 LIMIT 1