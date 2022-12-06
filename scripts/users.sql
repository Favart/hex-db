CREATE TABLE users (
    user_id serial PRIMARY KEY,
    username VARCHAR ( 50 ) UNIQUE NOT NULL,
    password VARCHAR ( 50 ) NOT NULL,
    first_name VARCHAR ( 50 ) NOT NULL,
    last_name VARCHAR ( 50 ) NOT NULL,
    birth_date DATE NOT NULL,
    created_on TIMESTAMP NOT NULL
);

ALTER TABLE users
ADD CONSTRAINT users_check
CHECK (
    birth_date > '1900-01-01'
);
