SELECT *
FROM customers;

CREATE TABLE customers(
  customer_id SERIAL PRIMARY KEY,
  first_name VARCHAR(50), --not null
  last_name VARCHAR(50),  -- not null
  email VARCHAR(100),
  phone_num VARCHAR(10)
);

SELECT *
FROM concessions;

CREATE TABLE concessions(
  concessions_id SERIAL PRIMARY KEY,
  customer_id INTEGER,
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
  beverage VARCHAR(30),
  food VARCHAR(30),
  candy VARCHAR(30)
);

SELECT *
FROM tickets;

CREATE TABLE tickets(
  ticket_id SERIAL PRIMARY KEY,
  customer_id INTEGER,
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
  type_of_ticket VARCHAR(10), --not null
  price VARCHAR(10),
  seat_id VARCHAR(5),
  movie_time TIMESTAMP,
  movies_id INTEGER
);

SELECT *
FROM movies;

CREATE TABLE movies(
  movies_id SERIAL PRIMARY KEY,
  title VARCHAR(150),
  rating VARCHAR(10),
  genre VARCHAR(25),
  ticket_id INTEGER,
  FOREIGN KEY (ticket_id) REFERENCES tickets(ticket_id)
);

ALTER TABLE tickets
DROP COLUMN movie_id;

ALTER TABLE tickets
ADD movies_id INTEGER,
ADD FOREIGN KEY (movies_id) REFERENCES movies(movies_id);

ALTER TABLE customers
ALTER COLUMN first_name SET NOT NULL,
ALTER COLUMN last_name SET NOT NULL;

ALTER TABLE tickets
ADD quantity INTEGER,
ALTER COLUMN type_of_ticket SET NOT NULL;