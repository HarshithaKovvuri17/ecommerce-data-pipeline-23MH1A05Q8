-- ================================
-- CI TEST DATABASE SETUP
-- ================================

-- Ensure schemas exist
CREATE SCHEMA IF NOT EXISTS staging;
CREATE SCHEMA IF NOT EXISTS production;
CREATE SCHEMA IF NOT EXISTS warehouse;

-- ----------------
-- PRODUCTION TABLE
-- ----------------
DROP TABLE IF EXISTS orders;

CREATE TABLE orders (
    order_id VARCHAR(20),
    customer_id VARCHAR(20)
);

-- ----------------
-- WAREHOUSE TABLES
-- ----------------

DROP TABLE IF EXISTS dim_customer;
CREATE TABLE dim_customer (
    customer_id VARCHAR(20),
    customer_name TEXT
);

DROP TABLE IF EXISTS dim_product;
CREATE TABLE dim_product (
    product_id VARCHAR(20),
    product_name TEXT
);

DROP TABLE IF EXISTS fact_orders;
CREATE TABLE fact_orders (
    order_id VARCHAR(20),
    customer_id VARCHAR(20),
    product_id VARCHAR(20)
);

-- ----------------
-- MINIMAL DATA (so tests pass)
-- ----------------

INSERT INTO dim_customer VALUES ('C001', 'Test Customer');
INSERT INTO dim_product VALUES ('P001', 'Test Product');

INSERT INTO orders VALUES ('O001', 'C001');
INSERT INTO fact_orders VALUES ('O001', 'C001', 'P001');
