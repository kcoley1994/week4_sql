
CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL, -- not null
    last_name VARCHAR(50) NOT NULL, --not null
    email VARCHAR(150),
    phone_num VARCHAR(15)
);

CREATE TABLE salesperson(
    salesperson_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL, --not null
    last_name VARCHAR(50) NOT NULL --not null
);

CREATE TABLE cars(
    car_id SERIAL PRIMARY KEY,
    make VARCHAR(50) NOT NULL, --not null
    model VARCHAR(50) NOT NULL, --not null
    car_year INTEGER,
    price VARCHAR(50),
    classfied VARCHAR(10)
);

CREATE TABLE invoice(
    invoice_id SERIAL PRIMARY KEY,
    date_purchased TIMESTAMP,
    invoice_num VARCHAR(15),
    customer_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    car_id INTEGER,
    FOREIGN KEY (car_id) REFERENCES cars(car_id),
    salesperson_id INTEGER,
    FOREIGN KEY (salesperson_id) REFERENCES salesperson(salesperson_id)
);

CREATE TABLE serviceticket(
    serviceticket_id SERIAL PRIMARY KEY,
    car_id INTEGER,
    FOREIGN KEY (car_id) REFERENCES cars(car_id),
    customer_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    ticket_num INTEGER,
    service_date TIMESTAMP
);

CREATE TABLE mechanic(
    mechanic_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL, --not null
    last_name VARCHAR(50) NOT NULL --not null
);

CREATE TABLE car_service(
    service_id SERIAL PRIMARY KEY,
    service_nam VARCHAR(100) NOT NULL, --not null
    rate VARCHAR(10)
);

CREATE TABLE service_mech(
    service_mech_id SERIAL PRIMARY KEY,
    mechanic_id INTEGER,
    FOREIGN KEY (mechanic_id) REFERENCES mechanic (mechanic_id),
    serviceticket_id INTEGER,
    FOREIGN KEY(serviceticket_id) REFERENCES serviceticket (serviceticket_id),
    service_id INTEGER,
    FOREIGN KEY (service_id) REFERENCES car_service (service_id)
);

