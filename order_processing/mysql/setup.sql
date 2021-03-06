USE OrderDB;

DROP TABLE IF EXISTS orders;

CREATE TABLE orders (
  CustomerID VARCHAR(100) NOT NULL,
  orderID VARCHAR(200) NOT NULL, -- this is the checkoutID from Stripe
  vendorID VARCHAR(100) NOT NULL,
  delivererID VARCHAR(100) NOT NULL,
  foodID VARCHAR(100) NOT NULL,
  quantity INT NOT NULL,
  price FLOAT NOT NULL,
  -- checkoutID VARCHAR(100) NOT NULL,
  order_status VARCHAR(100),
  delivery_address VARCHAR(1000) NOT NULL,
  PRIMARY KEY(orderID)
);

-- Insert newly created Orders

INSERT INTO orders (CustomerID, orderID, vendorID, delivererID, foodID, quantity, price, order_status, delivery_address) VALUES 
("user@user.com", "21232323432", "slypoon@gmail.com", "driver@driver.com", 1, 10, 15, "completed", "BLK123 SUMANG AVE #03-159");

INSERT INTO orders (CustomerID, orderID, vendorID, delivererID, foodID, quantity, price, order_status, delivery_address) VALUES 
("user@user.com", "2123443432", "slypoon@gmail.com", "driver@driver.com", 2, 5, 10, "completed", "SINGAPORE MANAGEMENT UNIVERSITY, SCHOOL OF BUSINESS");

INSERT INTO orders (CustomerID, orderID, vendorID, delivererID, foodID, quantity, price, order_status, delivery_address) VALUES 
("user@user.com", "2hdjfhsfv3432", "slypoon@gmail.com", "driver@driver.com", 1, 15, 8, "completed", "NATIONAL UNIVERSITY OF SINGAPORE, FACULTY OF ARTS AND SOCIAL SCIENCES");


-- INSERT NEWLY ORDERS THAT ARE PAID

INSERT INTO orders (CustomerID, orderID, vendorID, delivererID, foodID, quantity, price, order_status, delivery_address) VALUES (
  "faithkoh1997@gmail.com", "2039473942", "slypoon@gmail.com", "driver@driver.com", 4, 8, 10, "completed", "BLK322 WOODLANDS AVENUE"
);

INSERT INTO orders (CustomerID, orderID, vendorID, delivererID, foodID, quantity, price, order_status, delivery_address) VALUES (
  "faithkoh1997@gmail.com", "8347238428328", "slypoon@gmail.com", "driver@driver.com", 5, 4, 8, "completed", "BLK459 LORANG CHUAN"
);

INSERT INTO orders (CustomerID, orderID, vendorID, delivererID, foodID, quantity, price, order_status, delivery_address) VALUES (
  "faithkoh1997@gmail.com", "9382094823", "slypoon@gmail.com", "driver@driver.com", 3, 7, 10, "completed", "BLK772 HOUGANG AVE 3"
);

INSERT INTO orders (CustomerID, orderID, vendorID, delivererID, foodID, quantity, price, order_status, delivery_address) VALUES (
  "faithkoh1997@gmail.com", "9382094847", "slypoon@gmail.com", "driver@driver.com", 2, 6, 8.85, "completed", "Raffles Institution Boarding"
);

INSERT INTO orders (CustomerID, orderID, vendorID, delivererID, foodID, quantity, price, order_status, delivery_address) VALUES (
  "faithkoh1997@gmail.com", "9382094848", "slypoon@gmail.com", "driver@driver.com", 1, 6, 8.85, "completed", "Raffles Institution Boarding"
);

INSERT INTO orders (CustomerID, orderID, vendorID, delivererID, foodID, quantity, price, order_status, delivery_address) VALUES (
  "faithkoh1997@gmail.com", "9382094849", "slypoon@gmail.com", "driver@driver.com", 3, 6, 8.85, "completed", "Raffles Institution Boarding"
);