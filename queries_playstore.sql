-- Comments in SQL Start with dash-dash --
SELECT *  FROM analytics 

SELECT * FROM analytics WHERE id = 1880

SELECT id,app_name FROM analytics WHERE  last_updated = '2018-08-01'

SELECT * FROM analytics ORDER BY reviews desc LIMIT 5;

SELECT * FROM analytics WHERE rating>=4.8 ORDER BY reviews LIMIT 1

SELECT category, avg(rating) as avg  FROM analytics  GROUP BY category ORDER by avg desc;

SELECT app_name,price,rating FROM analytics WHERE rating<3 ORDER BY price desc LIMIT 1;

SELECT * FROM analytics WHERE min_installs<= 50 AND rating IS NOT NULL ORDER BY rating desc;

SELECT app_name FROM analytics WHERE rate < 3 AND reviews >= 10000;

SELECT * FROM analytics WHERE price BETWEEN .1 AND 1 ORDER BY reviews DESC LIMIT 10;

SELECT * FROM ( SELECT MIN(last_updated) FROM analytics);

SELECT * FROM ( SELECT MAX(price) FROM analytics);

SELECT SUM(reviews) FROM analytics

SELECT category FROM analytics  GROUP BY category HAVING count(id) >30;

SELECT reviews,min_installs, min_installs/reviews as prop FROM analytics WHERE min_installs>100000 ORDER BY prop LIMIT 1;
