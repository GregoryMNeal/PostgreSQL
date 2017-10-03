-- Write INSERT statements to enter data into the restaurant table.

INSERT INTO restaurant (name, distance_from_hq, stars, category,
  favorite_dish, takeout, last_visit)
  VALUES('Subway', .1, 2, 'Fast food', 'Turkey Breast', TRUE, '2017-10-03');

INSERT INTO restaurant (name, distance_from_hq, stars, category,
  favorite_dish, takeout, last_visit)
  VALUES('Becks Prime', 30, 3, 'Fast food', 'Cobb Salad', TRUE, '2017-10-02');

INSERT INTO restaurant (name, distance_from_hq, stars, category,
  favorite_dish, takeout, last_visit)
  VALUES ('Saltgrass', 35, 3, 'Steakhouse', 'Pats Ribeye', TRUE, '2017-09-30');

INSERT INTO restaurant (name, distance_from_hq, stars, category,
  favorite_dish, takeout, last_visit)
  VALUES ('Zamani Grille', 40, 3, 'Greek', 'Tiki Kabob', TRUE, '2017-09-28');

INSERT INTO restaurant (name, distance_from_hq, stars, category,
  favorite_dish, takeout, last_visit)
  VALUES ('Casa Linda', 25, 2, 'Mexican', 'Number 3', TRUE, '2017-08-25');

INSERT INTO restaurant (name, distance_from_hq, stars, category,
  favorite_dish, takeout, last_visit)
  VALUES ('Greg Neal Fine Steaks', 20, 5, 'Steakhouse', 'Filet', FALSE, '2017-10-03');
