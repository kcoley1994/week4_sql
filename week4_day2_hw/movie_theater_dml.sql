SELECT *
FROM customers;

INSERT INTO customers(
    first_name,
    last_name,
    email,
    phone_num
)
VALUES(
    'Kevon',
    'Coley',
    'kevoncoley49@gmail.com',
    '9549376171'
);

SELECT *
FROM concessions;

INSERT INTO concessions(
    beverage,
    food,
    candy
)
VALUES(
    'Sprite',
    'Popcorn',
    'M&M'
);

SELECT *
FROM tickets;

INSERT INTO tickets(
    type_of_ticket,
    price,
    seat_id,
    movie_time,
    quantity
)
VALUES(
    'adult',
    '12.00',
    'J-14',
    '2022-11-18 20:00',
    1
);

SELECT *
FROM movies;

INSERT INTO movies(
    title,
    rating,
    genre
)
VALUES(
    'Black Panther: Wakanda Forever',
    'PG-13',
    'Action/Adventure'
);