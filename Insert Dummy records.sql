INSERT INTO Outlet (Outlet_Name, Outlet_Address, Open_Time, Close_Time, Store_Phone_Number) VALUES
('Urban Eats - Central', '100 King St', '07:00', '15:00', '0290001000'),
('Urban Eats - Westside', '12 West Ave', '07:00', '15:00', '0290002000'),
('Urban Eats - Riverside', '55 River Rd', '07:00', '15:00', '0290003000');

INSERT INTO Roles (Role_Title) VALUES
('Manager'), ('Chef'), ('Barista'), ('Server');

INSERT INTO Customer(First_Name, Last_Name, Phone, Email) VALUES
('Jenny','Liu','0400000001','jenny.liu@gmail.com'), 
('Tom','Wang','0400000002','tom.wang@example.com'),
('Alice','Chen','0400000003','alice.chen@example.com'),
('Ben','Zhao','0400000004','ben.zhao@example.com'),
('Ivy','Lin','0400000005','ivy.lin@example.com'),
('David','Guo','0400000006','david.guo@example.com'),
('Eric','Sun','0400000007','eric.sun@example.com'),
('Fiona','He','0400000008','fiona.he@example.com'),
('Grace','Wu','0400000009','grace.wu@example.com'),
('Henry','Kao','0400000010','henry.kao@example.com'),
('Iris','Tsai','0400000011','iris.tsai@example.com'),
('Jack','Huang','0400000012','jack.huang@example.com'),
('Kelly','Ma','0400000013','kelly.ma@example.com'),
('Leo','Yeh','0400000014','leo.yeh@example.com'),
('Mia','Gao','0400000015','mia.gao@example.com');

INSERT INTO Product_Category (Category_Name) VALUES
('Beverages'),('Meals'),('Desserts');

INSERT INTO Product (Category_ID, Product_Name, Unit_Price) VALUES 
(1, 'Flat White', 5.20), 
(1, 'Long Black', 4.50),
(1, 'Cappuccino', 5.00), 
(1, 'Latte', 5.50), 
(1, 'English Breakfast Tea', 4.00), 
(2, 'Chicken Pasta', 12.90), 
(2, 'Beef Burger', 13.50),
(2, 'Veggie Sandwich', 8.20), 
(2, 'Ham & Cheese Sandwich', 8.50),
(2, 'Avocado Toast', 9.50),
(3, 'Cheesecake', 7.50), 
(3, 'Chocolate Cake', 7.20),
(3, 'Blueberry Muffin', 4.20), 
(3, 'Strawberry Cake', 7.50), 
(3, 'Lemon Cake', 7.20);

INSERT INTO Staff (Outlet_ID, Role_ID, First_Name, Last_Name, Staff_Phone) VALUES
(1,1,'Sam','Lee','0411111101'),
(1,2,'Nina','Ho','0411111102'),
(1,2,'Paul','Ding','0411111103'),
(1,3,'Rita','Fang','0411111104'),
(1,3,'Owen','Li','0411111105'),
(1,4,'Cathy','Shen','0411111106'),
(1,4,'Tony','Qiu','0411111107'),
(2,1,'Vera','Hu','0411111108'),
(2,2,'Will','Peng','0411111109'),
(2,2,'Yuki','Su','0411111110'),
(2,3,'Zack','Rao','0411111111'),
(2,3,'Amy','Lu','0411111112'),
(2,4,'Bill','Pan','0411111113'),
(3,3,'Cara','Tang','0411111114'),
(3,1,'Duke','Yan','0411111115'),
(3,2, 'Ivy', 'Tang', '0411111116');

INSERT INTO Shift (Outlet_ID, Day_Of_Week, Start_Time, End_Time) VALUES
(1, 'Monday',    '07:00', '11:00'),
(1, 'Monday',    '11:00', '15:00'),
(1, 'Tuesday',   '07:00', '11:00'),
(1, 'Tuesday',   '11:00', '15:00'),
(1, 'Wednesday', '07:00', '11:00'),
(1, 'Wednesday', '11:00', '15:00'),
(1, 'Thursday',  '07:00', '11:00'),
(1, 'Thursday',  '11:00', '15:00'),
(1, 'Friday',    '07:00', '11:00'),
(1, 'Friday',    '11:00', '15:00'),
(1, 'Saturday',  '07:00', '11:00'),
(1, 'Saturday',  '11:00', '15:00'),
(1, 'Sunday',    '07:00', '11:00'),
(1, 'Sunday',    '11:00', '15:00'), 
(2, 'Monday',    '07:00', '11:00'),
(2, 'Monday',    '11:00', '15:00'),
(2, 'Tuesday',   '07:00', '11:00'),
(2, 'Tuesday',   '11:00', '15:00'),
(2, 'Wednesday', '07:00', '11:00'),
(2, 'Wednesday', '11:00', '15:00'),
(2, 'Thursday',  '07:00', '11:00'),
(2, 'Thursday',  '11:00', '15:00'),
(2, 'Friday',    '07:00', '11:00'),
(2, 'Friday',    '11:00', '15:00'),
(2, 'Saturday',  '07:00', '11:00'),
(2, 'Saturday',  '11:00', '15:00'),
(2, 'Sunday',    '07:00', '11:00'),
(2, 'Sunday',    '11:00', '15:00'), 
(3, 'Monday',    '07:00', '11:00'),
(3, 'Monday',    '11:00', '15:00'),
(3, 'Tuesday',   '07:00', '11:00'),
(3, 'Tuesday',   '11:00', '15:00'),
(3, 'Wednesday', '07:00', '11:00'),
(3, 'Wednesday', '11:00', '15:00'),
(3, 'Thursday',  '07:00', '11:00'),
(3, 'Thursday',  '11:00', '15:00'),
(3, 'Friday',    '07:00', '11:00'),
(3, 'Friday',    '11:00', '15:00'),
(3, 'Saturday',  '07:00', '11:00'),
(3, 'Saturday',  '11:00', '15:00'),
(3, 'Sunday',    '07:00', '11:00'),
(3, 'Sunday',    '11:00', '15:00');

INSERT INTO Schedules (Sch_Date, Shift_ID, Staff_ID, Hours_Worked, Attendance_Status) VALUES
('2025-09-08', 1, 1, 5.0, 'Worked'), ('2025-09-08', 2, 1, 5.0, 'Worked'),
('2025-09-08', 1, 2, 5.0, 'Worked'), ('2025-09-08', 2, 2, 5.0, 'Worked'), 
('2025-09-08', 1, 4, 5.0, 'Worked'), ('2025-09-08', 2, 4, 5.0, 'Worked'), 
('2025-09-08', 1, 6, 5.0, 'Worked'), ('2025-09-08', 2, 6, 5.0, 'Worked'), 
('2025-09-09', 3, 1, 5.0, 'Worked'), ('2025-09-09', 4, 1, 5.0, 'Worked'),
('2025-09-09', 3, 3, 5.0, 'Worked'), ('2025-09-09', 4, 3, 5.0, 'Worked'),
('2025-09-09', 3, 5, 5.0, 'Worked'), ('2025-09-09', 4, 5, 5.0, 'Worked'),
('2025-09-09', 3, 7, 5.0, 'Worked'), ('2025-09-09', 4, 7, 5.0, 'Worked'),
('2025-09-08', 15, 8, 5.0, 'Worked'), ('2025-09-08', 16, 8, 5.0, 'Worked'),
('2025-09-08', 15, 9, 5.0, 'Worked'), ('2025-09-08', 16, 9, 5.0, 'Worked'), 
('2025-09-08', 15, 11, 5.0, 'Worked'), ('2025-09-08', 16, 11, 5.0, 'Worked'), 
('2025-09-08', 15, 13, 5.0, 'Worked'), ('2025-09-08', 16, 13, 5.0, 'Worked'), 
('2025-09-09', 17, 8, 5.0, 'Worked'), ('2025-09-09', 18, 8, 5.0, 'Worked'),
('2025-09-09', 17, 10, 5.0, 'Worked'), ('2025-09-09', 18, 10, 5.0, 'Worked'),
('2025-09-09', 17, 12, 5.0, 'Worked'), ('2025-09-09', 18, 12, 5.0, 'Worked'),
('2025-09-09', 17, 13, 5.0, 'Worked'), ('2025-09-09', 18, 13, 5.0, 'Worked'),
('2025-09-08', 29, 15, 5.0, 'Worked'), ('2025-09-08', 30, 15, 5.0, 'Worked'),
('2025-09-08', 29, 16, 5.0, 'Worked'), ('2025-09-08', 30, 16, 5.0, 'Worked'), 
('2025-09-08', 29, 14, 5.0, 'Worked'), ('2025-09-08', 30, 14, 5.0, 'Worked'), 
('2025-09-09', 31, 15, 5.0, 'Worked'), ('2025-09-09', 32, 15, 5.0, 'Worked'),
('2025-09-09', 31, 16, 5.0, 'Worked'), ('2025-09-09', 32, 16, 5.0, 'Worked'),
('2025-09-09', 31, 14, 5.0, 'Worked'), ('2025-09-09', 32, 14, 5.0, 'Worked');

INSERT INTO Orders (Customer_ID, Outlet_ID, Order_Date, Order_Time, Service_Type, Delivery_Address) VALUES
(1, 1, '2025-09-08','12:05','Dine-In',NULL),
(2, 1, '2025-09-08','08:10','Dine-In',NULL),
(3, 2,'2025-09-08','08:15','Dine-In',NULL),
(10, 1, '2025-09-08', '10:22', 'Takeaway', NULL),
(15, 1, '2025-09-08', '12:09', 'Delivery', '23 Main Blvd Apt 2'), 
(3, 2, '2025-09-08','13:29','Takeaway',NULL),
(5,2,'2025-09-09','12:10','Dine-In',NULL),
(6,3,'2025-09-09','09:10','Dine-In',NULL),
(7,3,'2025-09-09','07:10','Dine-In',NULL),
(8,2,'2025-09-09','09:10','Delivery','8 North St');

DELIMITER $$
CREATE TRIGGER trg_transactions_fill_price
BEFORE INSERT ON Transactions
FOR EACH ROW
BEGIN
  DECLARE v_price DECIMAL(5,2);
  SELECT Unit_Price INTO v_price
  FROM Product
  WHERE Product_ID = NEW.Product_ID;
  SET NEW.Unit_Price = v_price;
END$$
DELIMITER ;

INSERT INTO Transactions (Order_ID, Product_ID, Quantity) VALUES
(11,1,1), (11,11,1), (11, 10, 1), 
(12, 3, 1), (12, 4, 1), 
(13, 5, 2), (13, 4, 2), 
(14, 6, 1), (14, 1, 1), 
(15, 1, 2), 
(16, 5, 1), (16, 9, 1), 
(17, 3, 2), (17, 9, 1), 
(18, 5, 1), (18, 4, 1), 
(19, 3, 1), (19, 5, 1), 
(20, 4, 1), (20, 8, 1), (20, 11, 1);

DELIMITER //
CREATE TRIGGER trg_payment_amount
BEFORE INSERT ON Payment
FOR EACH ROW
BEGIN
  DECLARE total DECIMAL(10,2);
  SELECT SUM(Quantity * Unit_Price)
  INTO total
  FROM Transactions
  WHERE Order_ID = NEW.Order_ID;
  
  SET NEW.Amount = total;
END;
//
DELIMITER ;
INSERT INTO Payment (Order_ID, Payment_Method, Payment_Status, Paid_At) VALUES
(11, 'Card', 'Succeeded', '2025-09-08 12:05:38'), 
(12, 'Cash', 'Succeeded', '2025-09-08 08:10:43'), 
(13, 'Card', 'Succeeded', '2025-09-08 08:15:42'), 
(14, 'Card', 'Succeeded', '2025-09-08 10:22:23'),
(15, 'Card', 'Succeeded', '2025-09-08 12:09:10'), 
(16, 'Card', 'Succeeded', '2025-09-08 13:29:49'), 
(17, 'Cash', 'Succeeded', '2025-09-09 12:10:34'),
(18, 'Card', 'Succeeded', '2025-09-09 09:10:47'),
(19, 'Cash', 'Succeeded', '2025-09-09 07:10:45'), 
(20, 'Card', 'Succeeded', '2025-09-09 09:10:45');

INSERT INTO Reservation (Customer_ID, Outlet_ID, Reservation_Date, Reservation_Start_Time, Reservation_END_Time, Num_Customer) VALUES
(6, 1, '2025-09-01', '10:30', '12:00', 2),
(10, 1, '2025-09-11', '12:30', '14:00', 3), 
(5, 2, '2025-09-12', '13:30', '14:30', 2), 
(14, 3, '2025-09-18', '11:00', '13:00', 3), 
(5, 2, '2025-09-20', '12:00', '13:00', 4), 
(3, 1, '2025-09-11', '10:00', '11:00', 4), 
(7, 3, '2025-09-19', '12:00', '14:00', 2),
(14, 1, '2025-09-21', '10:30', '12:00', 3), 
(8, 3, '2025-09-11', '12:00', '13:00', 2), 
(11, 1, '2025-09-15', '13:00', '14:00', 3),
(13, 2, '2025-09-21', '11:00', '12:30', 4);

