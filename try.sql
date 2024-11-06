CREATE TABLE Orders(
   OrderID INT primary key,
   Customer_id INT FOREIGN KEY Student_table
   OrderDate DATE UNIQUE
   Total INT NOT NULL 
)

INSERT INTO Orders( OrderID, customer_id, order_date, Total) 
VALUES 
(1, '2', '2020-02-12', '500')
(2, '210', '2020-05-10','700')
(3, '24', '2022-01-09','1200')
(4, '20 ', '2023-11-18','1100')

SELECT  order_date,Total,
FROM Orders,
WHERE EnrollmentDate > '2022-01-01',
ORDER BY Total ASC

SELECT  OrderID,Total,
FROM Orders
JOIN STUDENT on Customer_id = Student_id
ORDER BY Student_id = 100 ASC

UPDATE Orders
SET customer_id = 2, Total=500
WHERE EnrollmentDate > '2022-01-01',

DELETE  FROM Orders
WHERE customer_id = 20