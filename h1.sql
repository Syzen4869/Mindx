CREATE TABLE Product (
  ID VARCHAR (10),
  Name VARCHAR (50),
  Type VARCHAR (50),
  Price Decimal (5,2),
  DateOfManufacture DATE,
  DateOfExpiry DATE,
);

INSERT INTO Product VALUES
('4869', 'Iphone 10', 'Phone', '999,99', '2020-01-01', '2021-01-01'),
('1234', 'Iphone 9', 'Phone', '888,88', '1995-01-01', '1996-01-01'),
('5678', 'Iphone 8', 'Phone', '777,77', '1997-01-01', '1998-01-01'),
('9101', 'Iphone 7', 'Phone', '666,66', '1994-01-01', '1995-01-01'),
('1121', 'Iphone 6', 'Phone', '555,55', '1992-01-01', '1993-01-01'),
('3141', 'Iphone 5', 'Phone', '444,44', '1998-01-01', '1999-01-01'),
('5161', 'Iphone 4', 'Phone', '333,33', '1991-01-01', '1994-01-01'),
('7181', 'Iphone 3', 'Phone', '222,22', '1992-01-01', '1999-01-01'),
('9202', 'Iphone 2', 'Phone', '111,11', '1991-01-01', '1996-01-01'),
('1222', 'Iphone 1', 'Phone', '100,11', '1993-01-01', '2000-01-01');