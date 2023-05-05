CREATE DATABASE bai_tap_04_05;
USE bai_tap_04_05;

create table users (
 id  int(3) NOT NULL AUTO_INCREMENT,
 name varchar(120) NOT NULL,
 email varchar(220) NOT NULL,
 country varchar(120),
 PRIMARY KEY (id)
);
insert into users(name, email, country) values('Minh','minh@codegym.vn','Viet Nam');
insert into users(name, email, country) values('Kante','kante@che.uk','Kenia');
SELECT * FROM users;
SELECT * FROM users WHERE country LIKE "Viet Nam";
SELECT * FROM users ORDER BY name;
DELIMITER //
CREATE PROCEDURE delete_by_id(IN user_id INT)
BEGIN
   DELETE FROM users WHERE id=user_id;
END //
DELIMITER ;
CALL delete_by_id(5);

DELIMITER //
CREATE PROCEDURE select_user()
BEGIN
   SELECT * FROM users;
END //
DELIMITER ;
CALL select_user;

DELIMITER //
CREATE PROCEDURE update_user(IN user_id int, user_name varchar(120),user_email varchar(220),user_country varchar(120) )
BEGIN
   UPDATE users SET name =user_name, email=user_email, country=user_country WHERE id = user_id ;
END //
DELIMITER ;
CALL update_user(2,'Kante','kante@che.uk','Korea');
