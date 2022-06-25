-- Tính số lượng nước nằm trong 1 region
-- Tính số lượng subregion nằm trong 1 region
-- Hiển thị tên các nước dưới nam bán cầu
-- Số lượng các đồng tiền được sử dụng trong 1 region
-- Hiển thị tên các nước có kinh độ từ -20 đến 61
-- Hiển thị tên các subregion có kinh độ từ -20 đến 61

-- 1:
SELECT DISTINCT region, COUNT name as "NumberOfCountries"
FROM countries
GROUP BY region;

-- 2:
SELECT DISTINCT region, COUNT subregion as "NumberOfSubregion"
FROM countries
GROUP BY region;

-- 3:
SELECT DISTINCT region, COUNT currency as "NumberOfCurrency"
FROM countries
GROUP BY region;

-- 4:
SELECT DISTINCT name
FROM countries
GROUP BY name, longitude
HAVING COUNT(*) BETWEEN -20 AND 61

-- 5:
SELECT DISTINCT subregion
FROM countries
GROUP BY subregion, longitude
HAVING COUNT(*) BETWEEN -20 AND 61

