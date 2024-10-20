CREATE DATABASE IF NOT EXISTS alx_book_store;

USE alx_book_store;

CREATE Authors(
  author_id INT AUTHOR_INCREMENT PRIMARY KEY
  author_name VARCHAR(215) NOT NULL 
);


CREATE TABLE IF NOT EXISTS Book (

  book_id PRIMARY KEY,
  title VARCHAR(130) NOT NULL,
  author_id INT Foreign Key reference Author(author_id),
  price DOUBLE NOT NULL, 
  publication_date DATE
);

CREATE TABLE Customers(
  Customer_id INT AUTHOR_INCREMENT PRIMARY KEY,
  customer_name VARCHAR(215) NOT NULL,
  email VARCHAR(215) NOT NULL,
  address TEXT NOT NULL UNIQUE

);

CREATE TABLE Orders(
  order_id INT AUTO_INCREMENT PRIMARY KEY,
  customer_id INT,
  order_date DATE NOT NULL,
  FOREIGN KEY (customer_id) REFERENCES Customers(customer_id) ON DELETE CASCADE
);

CREATE TABLE Order_Details (
  orderdetailid INT AUTO_INCREMENT PRIMARY KEY,
  order_id INT,
  book_id INT,
  quantity DOUBLE NOT NULL,
  FOREIGN KEY (order_id) REFERENCES Orders(order_id) ON DELETE CASCADE,
  FOREIGN KEY (book_id) REFERENCES Books(book_id) ON DELETE CASCADE