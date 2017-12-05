DROP TABLE IF EXISTS space_cowboys;

CREATE TABLE space_cowboys(
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  bounty_value INT2,
  danger_level VARCHAR(255) NOT NULL,
  still_wanted BOOLEAN
);
