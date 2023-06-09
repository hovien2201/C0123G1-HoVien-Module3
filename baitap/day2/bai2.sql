CREATE DATABASE quan_ly_ban_hang;
USE quan_ly_ban_hang;
CREATE TABLE customer(
  customer_id INT PRIMARY KEY,
  customer_name VARCHAR(45),
  customer_age INT
);
CREATE TABLE orders(
  orders_id INT PRIMARY KEY, 
  customer_id INT, FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
  orders_date DATETIME,
  orders_total_price INT
);
CREATE TABLE product(
  product_id INT PRIMARY KEY,
  product_name VARCHAR(45),
  product_price INT
);
CREATE TABLE orders_detail(
  orders_id INT,FOREIGN KEY(orders_id) REFERENCES orders(orders_id),
  product_id INT, FOREIGN KEY(product_id) REFERENCES product(product_id),
  orders_detail_qty INT
);