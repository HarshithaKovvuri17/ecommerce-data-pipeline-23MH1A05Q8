-- ============================
-- CI TEST SETUP (MINIMAL)
-- ============================

-- Schemas
CREATE SCHEMA IF NOT EXISTS production;
CREATE SCHEMA IF NOT EXISTS warehouse;

-- ----------------------------
-- Production Orders (for tests)
-- ----------------------------
DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
    order_id VARCHAR(20),
    customer_id VARCHAR(20)
);

-- ----------------------------
-- Warehouse Dimension
-- ----------------------------
DROP TABLE IF EXISTS dim_customer;
CREATE TABLE dim_customer (
    customer_id VARCHAR(20)
);

-- ----------------------------
-- Warehouse Fact
-- ----------------------------
DROP TABLE IF EXISTS fact_orders;
CREATE TABLE fact_orders (
    order_id VARCHAR(20),
    customer_id VARCHAR(20)
);

-- Insert minimal matching data
INSERT INTO dim_customer (customer_id)
VALUES ('CUST_001');

INSERT INTO orders (order_id, customer_id)
VALUES ('ORD_001', 'CUST_001');

INSERT INTO fact_orders (order_id, customer_id)
VALUES ('ORD_001', 'CUST_001');
