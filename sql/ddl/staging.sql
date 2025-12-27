CREATE SCHEMA IF NOT EXISTS staging;

CREATE TABLE staging.customers (
    customer_id INT,
    name TEXT,
    email TEXT,
    city TEXT
);

CREATE TABLE staging.products (
    product_id INT,
    product_name TEXT,
    price NUMERIC,
    cost NUMERIC
);

CREATE TABLE staging.transactions (
    transaction_id INT,
    customer_id INT,
    payment_method TEXT
);
