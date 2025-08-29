CREATE DATABASE IF NOT EXISTS gerenciales;
USE gerenciales;

CREATE TABLE IF NOT EXISTS customers (
  customer_id INT PRIMARY KEY,
  customer_gender VARCHAR(20) NULL,
  customer_age INT NULL
) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS orders (
  order_id INT PRIMARY KEY,
  purchase_date DATE,
  customer_id INT,
  customer_gender VARCHAR(20) NULL,
  customer_age INT NULL,
  product_category VARCHAR(50),
  product_name VARCHAR(100),
  product_price DECIMAL(10,2),
  quantity INT,
  order_total DECIMAL(10,2),
  payment_method VARCHAR(30),
  shipping_region VARCHAR(30),
  CONSTRAINT fk_orders_customer
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
