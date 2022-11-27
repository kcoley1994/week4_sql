SELECT *
FROM customer;

INSERT INTO customer(
    first_name,
    last_name,
    email,
    phone_num
)
VALUES(
    'Kevon',
    'Coley',
    'k.evon@hotmail.com',
    '954-937-6171'
),
(
    'Micheal',
    'Morris',
    'mikem@gmail.com',
    '929-587-1331'
);

SELECT *
FROM salesperson;

INSERT INTO salesperson(
    first_name,
    last_name
)
VALUES(
    'George',
    'Lopez'
),
(
    'Tony',
    'Parker'
);

SELECT *
FROM cars;

INSERT INTO cars(
    make,
    model,
    car_year,
    price,
    classfied
)
VALUES(
    'Toyota',
    'Camry',
    2020,
    '20,000',
    'Used'
),
(
    'Toyota',
    'Corolla',
    2023,
    '21,550',
    'New'
);

SELECT *
FROM invoice;

INSERT INTO invoice(
    date_purchased,
    invoice_num,
    customer_id,
    car_id,
    salesperson_id
)
VALUES(
    '2022-10-25',
    '15,000',
    1,
    1,
    2
),
(
    '2022-11-25',
    '18,000',
    2,
    2,
    1
);

INSERT INTO serviceticket(
    car_id,
    customer_id,
    ticket_num,
    service_date
)
VALUES(
    1,
    1,
    301,
    '2022-11-27 11:00:00'
);

INSERT INTO mechanic(
    first_name,
    last_name
)
VALUES(
    'Larry',
    'Johnson'
),
(
    'Joe',
    'Jackson'
);

INSERT INTO car_service(
    service_nam,
    rate
)
VALUES(
    'Maintenance - Oil change',
    '125.99'
);

INSERT INTO service_mech(
    mechanic_id,
    serviceticket_id,
    service_id
)
VALUES(
    1,
    1,
    1
);

