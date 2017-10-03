
-- Write a database schema: create a restaurant.sql file, in it write a CREATE TABLE statement to create a table called restaurant. This table will contain the following information, you will use the appropriate data types to represent the info. Please use an auto-incrementing primary key ID:
--
-- name
-- distance (in miles from HeadQuarters)
-- stars
-- category (type of food)
-- favorite dish
-- does takeout?
-- last time you ate there

CREATE TABLE restaurant (
  id SERIAL NOT NULL PRIMARY KEY,
  name VARCHAR,
  distance_from_hq REAL DEFAULT 0,
  stars INTEGER DEFAULT 0,
  category CHAR(30),
  favorite_dish VARCHAR,
  takeout BOOLEAN,
  last_visit DATE
);
