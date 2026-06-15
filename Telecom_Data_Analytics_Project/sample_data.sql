
INSERT INTO customers VALUES
(1,'Arun','Chennai','2024-01-10','Active'),
(2,'Priya','Bangalore','2024-02-15','Active'),
(3,'Rahul','Hyderabad','2024-03-20','Inactive'),
(4,'Meena','Coimbatore','2024-04-01','Active'),
(5,'Karthik','Chennai','2024-05-18','Active');

INSERT INTO plans VALUES
(101,'Basic',299.00),
(102,'Standard',499.00),
(103,'Premium',799.00);

INSERT INTO subscriptions VALUES
(1001,1,102,'2024-01-10'),
(1002,2,103,'2024-02-15'),
(1003,3,101,'2024-03-20'),
(1004,4,102,'2024-04-01'),
(1005,5,103,'2024-05-18');

INSERT INTO usage_records VALUES
(1,1,'2024-06-01',12.5,250),
(2,1,'2024-06-15',10.0,200),
(3,2,'2024-06-05',25.0,450),
(4,2,'2024-06-20',18.0,350),
(5,4,'2024-06-10',8.5,150),
(6,5,'2024-06-22',30.0,500);
