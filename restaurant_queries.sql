-- The names of the restaurants that you gave a 5 stars to
SELECT name FROM restaurant WHERE stars = 5;

-- The favorite dishes of all 5-star restaurants
SELECT favorite_dish FROM restaurant WHERE stars = 5;

-- The the id of a restaurant by a specific restaurant name, say 'Moon Tower'
SELECT id FROM restaurant WHERE name = 'Subway';

-- restaurants in the category of 'BBQ'
SELECT * FROM restaurant WHERE category = 'BBQ';

-- restaurants that do take out
SELECT * FROM restaurant WHERE takeout = TRUE;

-- restaurants that do take out and is in the category of 'BBQ'
SELECT * FROM restaurant WHERE category = 'BBQ' AND takeout = TRUE;

-- restaurants within 2 miles
SELECT * FROM restaurant WHERE distance_FROM_hq < 2;

-- restaurants you haven't ate at in the last week
SELECT * FROM restaurant WHERE last_visit <= '2017-09-26';

-- restaurants you haven't ate at in the last week and has 5 stars
SELECT * FROM restaurant WHERE last_visit <= '2017-09-26' AND stars = 5;

-- list restaurants by the closest distance.
SELECT * FROM restaurant ORDER BY distance_FROM_hq;

-- list the top 2 restaurants by distance.
SELECT * FROM restaurant ORDER BY stars DESC, distance_FROM_hq LIMIT 2;

-- list the top 2 restaurants by stars.
SELECT * FROM restaurant ORDER BY stars DESC LIMIT 2;

-- list the top 2 restaurants by stars where the distance is less than 2 miles.
SELECT * FROM restaurant WHERE distance_FROM_hq < 2 ORDER BY stars DESC LIMIT 2;

-- count the number of restaurants in the db.
SELECT COUNT(*) FROM restaurant;

-- count the number of restaurants by category.
SELECT COUNT(*) FROM restaurant GROUP BY category;

-- get the average stars per restaurant by category.
SELECT category, AVG(stars) AS average_stars FROM restaurant GROUP BY category;

-- get the max stars of a restaurant by category.
SELECT category, MAX(stars) AS maximum_stars FROM restaurant GROUP BY category;
