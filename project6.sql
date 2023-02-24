SELECT 
    column1,
    column2,
    column3
FROM 
    tablename
ORDER BY 
    column3 DESC
LIMIT 
    5
--creatinng a function
CREATE FUNCTION avg_movie_revenue(year_input INTEGER) 
RETURNS INTEGER
BEGIN
    DECLARE avg_revenue INTEGER;
    SELECT AVG(revenue) INTO avg_revenue FROM movies WHERE year = year_input;
    RETURN avg_revenue;
END

