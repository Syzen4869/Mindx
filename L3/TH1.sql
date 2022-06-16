-- Tìm kiếm các agents có trụ sở ở London hoặc New York
-- Tìm kiếm các customer đang làm việc ở Mumbai hoặc New York
-- Tìm kiếm tất cả các customer đang ở Úc và có grade (cấp) là 2
-- Tìm kiếm các agents có hoa hồng(COMMISSION) lớn hơn 0.13
-- Tìm kiếm các agents có hoa hồng(COMMISSION) lớn hơn 0.12 và nhỏ hơn 0.15
-- Tìm kiếm các order có ngày từ 2008-01-01 đến 2008-01-31
-- Tìm kiếm các customer có tên chứa rt
-- Tìm kiếm các customer không thuộc India

-- C1:
SELECT WORKING_AREA
FROM agents
WHERE WORKING_AREA IN ('London','New York');

-- C2:
SELECT WORKING_AREA
FROM customer
WHERE WORKING_AREA IN ('Mumbai','New York');

-- C3:
SELECT CUST_COUNTRY, GRADE
FROM customer
WHERE CUST_COUNTRY IN ('Australia') and GRADE = "2";

-- C4:
SELECT COMMISSION
FROM agents
WHERE COMMISSION > 0.13;

-- C5:
SELECT COMMISSION
FROM agents
WHERE COMMISSION BETWEEN 0.12 and 0.15;

-- C6:
SELECT ORD_DATE
FROM orders
WHERE ORD_DATE BETWEEN 2008-01-01 and 2008-01-31;

-- C7:
SELECT CUST_NAME
FROM customer
WHERE CUST_NAME LIKE '%rt%';

-- C8:
SELECT CUST_COUNTRY
FROM customer
WHERE CUST_COUNTRY NOT IN ('India');
