CREATE TABLE Customer
( Customer_id INT(6) UNIQUE PRIMARY KEY AUTO_INCREMENT,
  First_name VARCHAR(15) NOT NULL,
  Last_name VARCHAR(15),
  Address VARCHAR(100),
  Contact_details INT(10) NOT NULL,
  Customer_number INT(10),
  Customer_satisfication VARCHAR(6)
);

 INSERT INTO Customer
  VALUES
  (DEFAULT,'Emily','Dickinson','America',12789,135,'9/10'),
  (DEFAULT,'Sylvia','Plath','America',12345,246,'6/10'),
  (DEFAULT,'Walt','Whitman','America',12709,123,'7/10'),
  (DEFAULT,'Henry','Wadsworth','America',12897,190,'7/10'),
  (DEFAULT,'Emily','Bronte','England',12346,187,'8/10'),
  (DEFAULT,'John','Keats','England',13563,106,'9/10');

CREATE TABLE Employee
( Employee_id INT(6) UNIQUE PRIMARY KEY AUTO_INCREMENT,
  Phone_number INT(10) UNIQUE,
  PPS VARCHAR(9) UNIQUE,
  Account_email VARCHAR(50) UNIQUE,
  Account_password VARCHAR(50) NOT NULL,
  Address VARCHAR(100) NOT NULL,
  First_name VARCHAR(15) NOT NULL,
  Last_name VARCHAR(15) NOT NULL,
  Empl_role VARCHAR(20) NOT NULL,
  Date_of_Birth DATE NOT NULL,
  Hourly_rate INT(3) NOT NULL,
  Email VARCHAR(50) NOT NULL
);

INSERT INTO Employee
  VALUES
  (DEFAULT,087111,1124,'BBaggins@shire','precious12','Bag End','Bilbo','Baggins','Sales Rep','22/9/01',11,'BBaggins@shire'),
  (DEFAULT,087222,1125,'FBaggins@shire','precious13','Bag End','Frodo','Baggins','Sales Rep','22/9/02',11,'FBaggins@shire'),
  (DEFAULT,087333,1126,'SGamgee@shire','potato1','Shire','Samwise','Gamgee','Floor','06/04/02',11,'SGamgee@shire'),
  (DEFAULT,087444,1127,'PTook@shire','Breakfast9','Shire','Peregrin','Took','Floor','01/04/02',11,'SGamgee@shire'),
  (DEFAULT,087555,1128,'MBrandybuck@shire','Esquire1','Shire','Meriadoc','Brandybuck','Floor','05/04/02',11,'MBrandybuck@shire');

CREATE TABLE Orders
( Order_ID INT(6) UNIQUE PRIMARY KEY AUTO_INCREMENT,
  Invoice_number INT(10) UNIQUE,
  Order_description VARCHAR(100) NOT NULL,
  Payment_type VARCHAR(15) NOT NULL,
  Order_date DATE NOT NULL,
  Order_time TIME NOT NULL,
  Delivery_date DATE NOT NULL
  );
  
  INSERT INTO Orders
  VALUES
  (DEFAULT, 0987,'Hardback','Card','2022-07-02','12:30','2022-07-07'),
  (DEFAULT, 0986,'Hardback x2','Card','2022-07-03','17:30','2022-07-08'),
  (DEFAULT, 0985,'Hardback, Paperback','Card','2022-05-01','09:00','2022-07-10'),
  (DEFAULT, 0984,'Hardback, Paperback','Card','2022-06-10','13:45','2022-07-10'),
  (DEFAULT, 0983,'Paperback','Card','2022-07-05','15:00','2022-07-10');

CREATE TABLE Receipt
( Receipt_ID INT(6) UNIQUE PRIMARY KEY AUTO_INCREMENT,
  Receipt_number INT(10) UNIQUE,
  Date_issued DATE NOT NULL,
  Employee_who_served_you VARCHAR(100)
  );

INSERT INTO Receipt
  VALUES
  (DEFAULT, 10987,'2022-07-02','Bilbo'),
  (DEFAULT, 10986,'2022-07-03','Bilbo'),
  (DEFAULT, 10985,'2022-05-01','Frodo'),
  (DEFAULT, 10984,'2022-06-10','Bilbo'),
  (DEFAULT, 10983,'2022-07-05','Frodo');
  

CREATE TABLE Book
( Book_ID INT(8) UNIQUE PRIMARY KEY AUTO_INCREMENT,
  Title VARCHAR(100) NOT NULL,
  Author VARCHAR(100) NOT NULL,
  Genre VARCHAR(100) NOT NULL,
  Page_count INT(5) NOT NULL,
  Price INT(3) NOT NULL,
  Book_cover_type VARCHAR(50),
  Publication_date INT(10)
  );
  
INSERT INTO Book
VALUES
  (DEFAULT,'Emma','Jane Austen','Fiction',300,9,'Paperback',1815),
  (DEFAULT,'Twilight','Stephenie Meyer','Fiction',400,12,'Paperback',2005),
  (DEFAULT,'Jane Eyre','Charlotte Bronte','Fiction',300,9,'Paperback',1847),
  (DEFAULT,'Lolita','Vladimir Nabokov','Fiction',336,7,'Paperback',1955),
  (DEFAULT,'Crescent City','Sarah J.Maas','YA',816,7,'Paperback',2020);
  
CREATE TABLE Book_Copy
( Book_copy_ID INT(8) UNIQUE PRIMARY KEY AUTO_INCREMENT,
  fk_bk INT(10),
  FOREIGN KEY Book_ID(fk_bk) REFERENCES Book(Book_ID),
  Amount_of_copies INT(10)
  );
  
  INSERT INTO Book_Copy
  VALUES
  (DEFAULT,2,57),
  (DEFAULT,3,70),
  (DEFAULT,5,11),
  (DEFAULT,1,23),
  (DEFAULT,4,66);

