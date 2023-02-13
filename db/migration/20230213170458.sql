CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE TYPE user_status AS ENUM('active','inactive');

create table user_id (
    user_id uuid default uuid_generate_v4() primary key,
    first_name varchar(100) unique not null,
    last_name varchar(100) unique not null,
    email varchar(100) unique not null,
    password varchar(100) not null,
    phone_number varchar(20),
    created_at timestamp default CURRENT_TIMESTAMP,
    updated_at timestamp default CURRENT_TIMESTAMP,
    status user_status
);