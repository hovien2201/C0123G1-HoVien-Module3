CREATE DATABASE quan_ly_ban_hang_day3;
USE quan_ly_ban_hang_day3;
CREATE TABLE customer(
  customer_id INT PRIMARY KEY, 
  customer_name VARCHAR(45), 
  customer_age INT
);
CREATE TABLE orders(
  orders_id INT PRIMARY KEY, 
  customer_id INT, 
  FOREIGN KEY(customer_id) REFERENCES customer(customer_id), 
  orders_date DATETIME, 
  orders_total_price INT
);
CREATE TABLE product(
  product_id INT PRIMARY KEY, 
  product_name VARCHAR(45), 
  product_price INT
);
CREATE TABLE orders_detail(
  orders_id INT, 
  FOREIGN KEY(orders_id) REFERENCES orders(orders_id), 
  product_id INT, 
  FOREIGN KEY(product_id) REFERENCES product(product_id), 
  orders_detail_qty INT
);
-- them du lieu
INSERT INTO customer 
VALUES 
  (1, 'Minh Quan', 10), 
  (2, 'Ngoc Oanh', 20), 
  (3, 'Hong Ha', 50);
INSERT INTO orders (
  orders_id, customer_id, orders_date
) 
VALUES 
  (1, 1, '2006-03-21'), 
  (2, 2, '2006-03-23'), 
  (3, 1, '2006-03-16');
SELECT 
  * 
FROM 
  orders;
INSERT INTO product 
VALUES 
  (1, 'May Giat', 3), 
  (2, 'Tu Lanh', 5), 
  (3, 'Dieu Hoa', 7), 
  (4, 'Quat', 1), 
  (5, 'Bep Dien', 2);
INSERT INTO orders_detail 
VALUES 
  (1, 1, 3), 
  (1, 3, 7), 
  (1, 4, 2), 
  (2, 1, 1), 
  (3, 1, 8), 
  (2, 5, 4), 
  (2, 3, 3);
-- hien thi du lieu
--  Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order
SELECT 
  o.orders_id, 
  o.orders_date, 
  o.orders_total_price 
FROM 
  orders o;
--  Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách
SELECT 
  c.*, 
  p.product_name 
FROM 
  customer c 
  INNER JOIN orders o ON c.customer_id = o.customer_id 
  INNER JOIN orders_detail od ON o.orders_id = od.orders_id 
  INNER JOIN product p ON p.product_id = od.product_id;
--   Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào
SELECT 
  * 
FROM 
  customer c 
  LEFT JOIN orders o ON c.customer_id = o.customer_id 
WHERE 
  isnull(o.customer_id);
-- Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn
--  (giá một hóa đơn được tính bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn. Giá bán của từng loại được tính = odQTY*pPrice)
SELECT 
  o.orders_id, 
  o.orders_date, 
  od.orders_detail_qty * p.product_price AS gia_tien 
FROM 
  orders o 
  INNER JOIN orders_detail od ON o.orders_id = od.orders_id 
  INNER JOIN product p ON p.product_id = od.product_id;

  
  
  
  
  
  