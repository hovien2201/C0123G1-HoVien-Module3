CREATE DATABASE demo;
USE demo;
CREATE TABLE products (
  id INT PRIMARY KEY, 
  product_code INT UNIQUE NOT NULL, 
  product_name VARCHAR(50) NOT NULL, 
  product_price INT NOT NULL CHECK (product_price > 0), 
  product_amount INT CHECK (product_amount > 0), 
  product_description VARCHAR(50), 
  product_status BIT
);
INSERT INTO products VALUE(
  1, 1, 'banh', 120000, 2, 'banh socola', 
  1
), 
(
  2, 2, 'keo', 10000, 50, 'keo chanh', 
  1
), 
(
  3, 3, 'sach', 1500000, 10, 'sach sql', 
  0
), 
(
  4, 4, 'vo', 670000, 111, 'vo ghi bai', 
  1
);
-- Tạo Unique Index trên bảng Products (sử dụng cột productCode để tạo chỉ mục)
-- Tạo Composite Index trên bảng Products (sử dụng 2 cột productName và productPrice)
-- Sử dụng câu lệnh EXPLAIN để biết được câu lệnh SQL của bạn thực thi như nào
-- So sánh câu truy vấn trước và sau khi tạo index
SELECT 
  * 
FROM 
  products;
EXPLAIN 
SELECT 
  * 
FROM 
  products 
WHERE 
  product_code = 3;
CREATE UNIQUE INDEX product_code_index ON products (product_code);
CREATE INDEX composite_index ON products (product_name, product_price);
EXPLAIN 
SELECT 
  * 
FROM 
  products 
WHERE 
  product_code = 3;
  
-- Tạo view lấy về các thông tin: productCode, productName, productPrice, productStatus từ bảng products.
CREATE VIEW p_view AS 
SELECT 
  product_code, 
  product_name, 
  product_price, 
  product_status 
FROM 
  products;
SELECT 
  * 
FROM 
  p_view;
  
-- Tiến hành sửa đổi view
UPDATE 
  p_view 
SET 
  product_name = 'xe hoi' 
WHERE 
  product_name = 'banh';
SELECT 
  * 
FROM 
  p_view;
  
-- Tiến hành xoá view
DROP 
  VIEW p_view;
  
-- Tạo store procedure lấy tất cả thông tin của tất cả các sản phẩm trong bảng product
delimiter // CREATE PROCEDURE sp_product() BEGIN 
SELECT 
  * 
FROM 
  products;
END // delimiter;
CALL sp_product();

-- Tạo store procedure thêm một sản phẩm mới
delimiter // CREATE PROCEDURE sp_product_add(
  IN id INT, 
  product_code INT, 
  product_name VARCHAR(50), 
  product_price INT, 
  product_amount INT, 
  product_description VARCHAR(50), 
  product_status BIT
) BEGIN INSERT INTO products VALUE(
  id, product_code, product_name, product_price, 
  product_amount, product_description, 
  product_status
);
END // delimiter;

CALL sp_product_add(
  5, 5, 'xe dap', 1500000, 1, 'xe hu', 
  1
);
SELECT * FROM products;
  
-- Tạo store procedure sửa thông tin sản phẩm theo id
delimiter // CREATE PROCEDURE sp_product_update(
  IN id_update INT, 
  code_update INT, 
  name_update VARCHAR(50), 
  price_update INT, 
  amount_update INT, 
  description_update VARCHAR(50), 
  status_update BIT
) BEGIN 
UPDATE 
  products 
SET 
  product_Code = code_update, 
  product_name = name_update, 
  product_price = price_update, 
  product_amount = amount_update, 
  product_description = description_update, 
  product_status = status_update 
WHERE 
  id = id_update;
END // delimiter;
SET 
  sql_safe_updates = 0;
  
CALL sp_product_update(
  3, 3, 'du thuyen', 100000000, 1, 'vip', 
  0
);
SET 
  sql_safe_updates = 1;
  SELECT * FROM products;
  
-- Tạo store procedure xoá sản phẩm theo id
delimiter // CREATE PROCEDURE sp_product_delete(IN p_id INT) BEGIN 
DELETE FROM 
  products 
WHERE 
  id = p_id;
END // delimiter;
CALL sp_product_delete(2);
SELECT * FROM products where product_status=1 ;
