select*
from[dbo].[AWS_SaaS]

//SALES VARIATION BY REGION 

SELECT
  Region,
  SUM(Sales) AS total_sales
FROM
  [dbo].[AWS_SaaS]
GROUP BY
  Region;


//BEST SELLING PRODUCTS

SELECT
  Product,
  SUM(Sales) AS total_sales,
  SUM(Quantity) AS total_quantity
FROM
  [dbo].[AWS_SaaS]
GROUP BY
  Product
ORDER BY
  total_sales DESC


//UNDERPERFORMING PRODUCTS

SELECT
  Product,
  SUM(Sales) AS total_sales,
  SUM(Quantity) AS total_quantity
FROM
 [dbo].[AWS_SaaS]
GROUP BY
  Product
ORDER BY
  total_sales ASC


//Top-Performing Customers

SELECT
  Customer,
  SUM(Sales) AS total_sales
FROM
 [dbo].[AWS_SaaS]
GROUP BY
  Customer
ORDER BY
  total_sales DESC


//Least Performing Customers

SELECT
  Customer,
  SUM(Sales) AS total_sales
FROM
 [dbo].[AWS_SaaS]
GROUP BY
  Customer
ORDER BY
  total_sales ASC;


//Sales and Profit Trends by Country

SELECT
  Country,
  SUM(Sales) AS total_sales,
  SUM(Profit) AS total_profit
FROM
 [dbo].[AWS_SaaS]
GROUP BY
  Country
ORDER BY
  total_sales DESC;









