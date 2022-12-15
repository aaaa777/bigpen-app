CREATE TABLE bigpen_users (
    user_id serial PRIMARY KEY,
    user_name varchar(20) NOT NULL,
    user_pass varchar(100) NOT NULL,
    UNIQUE(user_name)
);