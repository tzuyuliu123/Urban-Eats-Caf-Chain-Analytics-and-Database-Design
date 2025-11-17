CREATE TABLE Customer 
(
Customer_ID INTEGER AUTO_INCREMENT PRIMARY KEY, 
First_Name VARCHAR (10) NOT NULL, 
Last_Name VARCHAR(10) NOT NULL, 
Phone VARCHAR(20), 
Email VARCHAR(120),
UNIQUE(Email)
);

CREATE TABLE Outlet 
(
Outlet_ID INTEGER AUTO_INCREMENT PRIMARY KEY, 
Outlet_Name VARCHAR(120) NOT NULL, 
Outlet_Address TEXT NOT NULL,
Open_Time TIME, 
Close_Time TIME, 
Store_Phone_Number VARCHAR(20)
);

CREATE TABLE Product_Category
(
Category_ID INTEGER AUTO_INCREMENT PRIMARY KEY, 
Category_Name VARCHAR(30) NOT NULL UNIQUE
);

CREATE TABLE Roles 
( # USE Roles TO AVOID THE SYSTEM CRASH
Role_ID INTEGER AUTO_INCREMENT PRIMARY KEY, 
Role_Title VARCHAR(20) NOT NULL UNIQUE
);

CREATE TABLE Orders
(     #USE Orders TO AVOID THE SYSTEM CRASH
Order_ID INTEGER AUTO_INCREMENT PRIMARY KEY, 
Customer_ID INTEGER, 
Outlet_ID INTEGER, 
Order_Date Date, 
Order_Time Time,
Service_Type ENUM('Dine-In','Takeaway','Delivery') NOT NULL,
Delivery_Address TEXT NULL, 
CONSTRAINT fk_orders_customer
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
    ON DELETE SET NULL ON UPDATE CASCADE,
CONSTRAINT fk_orders_outlet
    FOREIGN KEY (Outlet_ID) REFERENCES Outlet(Outlet_ID)
    ON DELETE RESTRICT ON UPDATE CASCADE,
CONSTRAINT chk_delivery_addr CHECK (
    (Service_Type <> 'Delivery') OR (Delivery_Address IS NOT NULL)
  )
);

CREATE TABLE Product 
(
Product_ID INTEGER AUTO_INCREMENT PRIMARY KEY, 
Category_ID INTEGER NOT NULL, 
Product_Name VARCHAR(100) NOT NULL, 
Unit_Price DECIMAL(10, 2) NOT NULL, 
CONSTRAINT fk_Product_Category
FOREIGN KEY (Category_ID) REFERENCES Product_Category(Category_ID)
ON DELETE RESTRICT ON UPDATE CASCADE, 
CONSTRAINT uq_category_product UNIQUE (Category_ID, Product_Name), 
CONSTRAINT chk_product_price CHECK (Unit_Price >= 0)
);

CREATE TABLE Transactions
( # USE Transactions TO AVOID THE SYSTEM CRASH
Order_ID INTEGER, 
Product_ID INTEGER, 
PRIMARY KEY (Order_ID, Product_ID), 
Quantity INTEGER, 
Unit_Price DECIMAL (10,2), 
CONSTRAINT fk_tran_order
    FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID)
    ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT fk_tran_product
    FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID)
    ON DELETE RESTRICT ON UPDATE CASCADE,
CONSTRAINT chk_tran_qty CHECK (Quantity > 0),
CONSTRAINT chk_tran_price CHECK (Unit_Price >= 0)
);

CREATE TABLE Payment 
(
Payment_ID INTEGER AUTO_INCREMENT PRIMARY KEY, 
Order_ID INTEGER, 
Amount DECIMAL (10, 2), 
Payment_Method ENUM('Cash','Card') NOT NULL, 
Payment_Status ENUM('Succeeded','Refunded','Failed') NOT NULL,
Paid_At DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
CONSTRAINT fk_payment_order
    FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID)
    ON DELETE RESTRICT ON UPDATE CASCADE,
CONSTRAINT chk_payment_total CHECK (Amount >= 0)
);

CREATE TABLE Reservation
(
Reservation_ID INTEGER AUTO_INCREMENT PRIMARY KEY, 
Customer_ID INTEGER NOT NULL, 
Outlet_ID INTEGER NOT NULL,
Reservation_Date Date NOT NULL, 
Reservation_Start_Time Time NOT NULL,
Reservation_End_Time Time NOT NULL, 
Num_Customer INTEGER NOT NULL, 
CONSTRAINT fk_res_customer
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
    ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT fk_res_outlet
    FOREIGN KEY (Outlet_ID) REFERENCES Outlet(Outlet_ID)
    ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT chk_res_party CHECK (Num_Customer > 0),
  CONSTRAINT chk_res_time CHECK (Reservation_Start_Time < Reservation_End_Time)
);

CREATE TABLE Staff 
(
Staff_ID INTEGER AUTO_INCREMENT PRIMARY KEY, 
Outlet_ID INTEGER NOT NULL, 
Role_ID INTEGER NOT NULL, 
First_Name VARCHAR(10) NOT NULL, 
Last_Name VARCHAR(10) NOT NULL, 
Staff_Phone VARCHAR(20), 
CONSTRAINT fk_staff_outlet
    FOREIGN KEY (Outlet_ID) REFERENCES Outlet(Outlet_ID)
    ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT fk_staff_role
    FOREIGN KEY (Role_ID) REFERENCES Roles(Role_ID)
    ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE Shift (
  Shift_ID INT AUTO_INCREMENT PRIMARY KEY,
  Outlet_ID INT, 
  Day_Of_Week  ENUM('Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday') NOT NULL,
  Start_Time   TIME NOT NULL,
  End_Time     TIME NOT NULL,
  CONSTRAINT chk_shift_time CHECK (Start_Time < End_Time), 
  CONSTRAINT fk_stift_outlet
    FOREIGN KEY (Outlet_ID) REFERENCES Outlet(Outlet_ID)
    ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE Schedules 
( # USE Schedules TO AVOID THE SYSTEM CRASH
Sch_Date DATE NOT NULL, 
Shift_ID INTEGER NOT NULL, 
Staff_ID INTEGER NOT NULL,
PRIMARY KEY (Sch_Date, Shift_ID, Staff_ID), 
Hours_Worked DECIMAL NOT NULL DEFAULT 0, 
Attendance_Status ENUM('Scheduled','Worked','No-Show') NOT NULL DEFAULT 'Scheduled',
  CONSTRAINT fk_sched_shift
    FOREIGN KEY (Shift_ID)  REFERENCES Shift(Shift_ID)
      ON DELETE RESTRICT ON UPDATE CASCADE,

  CONSTRAINT fk_sched_staff
    FOREIGN KEY (Staff_ID)  REFERENCES Staff(Staff_ID)
      ON DELETE RESTRICT ON UPDATE CASCADE,

  CONSTRAINT chk_hours_nonneg CHECK (Hours_Worked >= 0)
);