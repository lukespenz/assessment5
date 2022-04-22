CREATE TABLE animals (
  animal SERIAL PRIMARY KEY,
  name varchar(40),
  age NUMERIC,
  personality INT NOT NULL references dog_personalities(dog_personalities_id)
);

CREATE TABLE dog_personalities (
  dog_personalities_id SERIAL PRIMARY KEY,
  energy_lvl NUMERIC,
  training_lvl NUMERIC,
  cuddler BOOLEAN,
  couch_potato BOOLEAN,
  potty_trained BOOLEAN
);

CREATE TABLE human_personalities (
  human_personalities_id SERIAL PRIMARY KEY,
  activity_lvl NUMERIC,
  cuddler BOOLEAN,
  couch_potato BOOLEAN
);

CREATE TABLE humans (
  humans_id SERIAL PRIMARY KEY,
  name varchar(40),
  personality INT NOT NULL references human_personalities(human_personalities_id)
);

CREATE TABLE good_matches (
 good_matches_id SERIAL PRIMARY KEY,
 dog_personality INT NOT NULL references dog_personalities(dog_personalities_id),
 human_personality INT NOT NULL references human_personalities(human_personalities_id)
);
