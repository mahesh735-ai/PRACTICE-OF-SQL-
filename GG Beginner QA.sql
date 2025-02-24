-- Create Sales table
CREATE TABLE Sales(
sale_id INT primary key,
product_id INT ,
quantity_sold INT ,
sale_date DATE,
total_price DECIMAL(10,2)
);

--INSERT SAMPLE DATA INTO Sales Table
INSERT INTO Sales 
(sale_id,product_id,quantity_sold ,sale_date,
total_price )
VALUES
(1, 101, 5,'2024-01-01',2500.00),
(2, 102, 3, '2024-01-02', 900.00),
(3, 103, 2, '2024-01-02', 60.00),
(4, 104, 4, '2024-01-03', 80.00),
(5, 105, 6, '2024-01-03', 90.00);

select * from sales

-- Create Products table
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    unit_price DECIMAL(10, 2)
);

-- Insert sample data into Products table

INSERT INTO Products (product_id, product_name, category, unit_price) VALUES
(101, 'Laptop', 'Electronics', 500.00),
(102, 'Smartphone', 'Electronics', 300.00),
(103, 'Headphones', 'Electronics', 30.00),
(104, 'Keyboard', 'Electronics', 20.00),
(105, 'Mouse', 'Electronics', 15.00);

--SQL Practice Exercises for Beginners
--1. Retrieve all columns from the Sales table.
SELECT * FROM Sales

--2. Retrieve the product_name and unit_price from the Products table.
SELECT product_name,unit_price FROM Products;

--3. Retrieve the sale_id and sale_date from the Sales table.
SELECT sale_id , sale_date  from Sales;

--4. Filter the Sales table to show only sales with a total_price greater than $100.
SELECT * FROM Sales
where total_price > 100;

--5. Filter the Products table to show only products in the 'Electronics' category.
select * from products
where category ='Electronics';

--6. Retrieve the sale_id and total_price from the Sales table for sales made on January 3, 2024

SELECT sale_id, total_price 
FROM Sales 
WHERE sale_date = '2024-01-03';

--7. Retrieve the product_id and product_name from the Products table for products with a unit_price greater than $100.

SELECT Product_id , product_name
from products
where unit_price > 100;

--8. Calculate the total revenue generated from all sales in the Sales table.
select * from Sales
SELECT SUM( total_price) as Total_revenue
from sales;

--9. Calculate the average unit_price of products in the Products table.
SELECT AVG( unit_price ) as average_price 
FROM Products;
--or 
SELECT ROUND(AVG( unit_price )) as average_price 
FROM Products;

--10.Calculate the total quantity_sold from the Sales table.
SELECT SUM( quantity_sold)
From Sales;

--11. Count Sales Per Day from the Sales table
select sale_date ,COUNT(*) AS sales_count
from sales
GROUP BY sale_date
order by sale_date;

--Explanation:

--This query groups sales by date and counts the number of 
--transactions per day, enabling analysis of daily sales patterns.

--12. Retrieve product_name and unit_price from the Products table with the Highest Unit Price
select product_name,unit_price 
from Products
order by unit_price desc
limit 1; --self done

--13. Retrieve the sale_id, product_id, and total_price from the Sales table for sales with a quantity_sold greater than 4.
select sale_id,product_id,total_price 
FROM Sales
WHERE quantity_sold > 4;

SELECT * FROM SALES

--14. Retrieve the product_name and unit_price from the Products table, ordering the results by unit_price in descending order.
SELECT Product_name , unit_price
FROM products 
order by unit_price Desc ;

--15. Retrieve the total_price of all sales, rounding the values to two decimal places.
SELECT ROUND(Total_price,2) AS Total_sales
FROM sales;

--16. Calculate the average total_price of sales in the Sales table.
SELECT AVG( total_price) as Average_oftotal 
From Sales

--17. Retrieve the sale_id and sale_date from the Sales table, 
--formatting the sale_date as 'YYYY-MM-DD'.
SELECT sale_id, DATE_FORMAT(sale_date, '%Y-%m-%d') AS
formatted_date 
FROM Sales;

--18. Calculate the total revenue
--generated from sales of products in the 'Electronics' category.

select category,sum(unit_price) 
from Products
group by category;

--ACCurate answ
SELECT SUM (S.total_price ) as total_revenue
FROM Sales as S
JOIN Products as P
ON S.product_id  = P.product_id
WHERE p.category = 'Electronics';

--19. Retrieve the product_name and unit_price from the Products table, filtering the unit_price to show only values between $20 and $600.
SELECT product_name , unit_price 
FROM Products
where unit_price BETWEEN 20 AND 600;

--20. Retrieve the product_name and category from the Products table, ordering the results by category in ascending order.

SELECT product_name,category
FROM Products
order by category ASC;

select * from Products

----FINISH---**
