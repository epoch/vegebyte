CREATE DATABASE goodfoodhunting;

CREATE TABLE dishes (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  image_url VARCHAR(200)
);

INSERT INTO dishes (name, image_url) VALUES ('fried donuts', 'http://s3.amazonaws.com/foodspotting-ec2/reviews/5714113/thumb_600.jpg?1453015528?1453075052');

INSERT INTO dishes (name, image_url) VALUES ('ribs and chips','http://s3.amazonaws.com/foodspotting-ec2/reviews/4281381/thumb_600.jpg?1385803706?1453075144');

INSERT INTO dishes (name, image_url) VALUES ('nutella bomba','http://s3.amazonaws.com/foodspotting-ec2/reviews/5715064/thumb_600.jpg?1453077233?1453155718');

CREATE TABLE dish_types (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(100) NOT NULL
);

INSERT INTO dish_types (name) VALUES ('snack');
INSERT INTO dish_types (name) VALUES ('dessert');
INSERT INTO dish_types (name) VALUES ('lunch');

ALTER TABLE dishes ADD dish_type_id INTEGER;

