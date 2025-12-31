-- =========================
-- DIMENSION TABLES
-- =========================

CREATE TABLE IF NOT EXISTS dim_customer (
    customer_id VARCHAR(20) PRIMARY KEY,
    name TEXT
);

CREATE TABLE IF NOT EXISTS dim_product (
    product_id VARCHAR(20) PRIMARY KEY,
    product_name TEXT
);

CREATE TABLE IF NOT EXISTS dim_status (
    status_id INT PRIMARY KEY,
    status_name TEXT
);

-- =========================
-- ORDERS (REQUIRED BY TEST)
-- =========================

CREATE TABLE IF NOT EXISTS orders (
    order_id VARCHAR(20) PRIMARY KEY,
    customer_id VARCHAR(20),
    order_date DATE
);

-- =========================
-- FACT TABLE
-- =========================

CREATE TABLE IF NOT EXISTS fact_orders (
    order_id VARCHAR(20),
    customer_id VARCHAR(20,
    product_id VARCHAR(20),
    amount NUMERIC
);
