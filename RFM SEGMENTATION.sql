SELECT*
FROM [RFM_SQL]

//HOW MANY CUSTOMERS ARE THERE IN EACH SEGMENT? 

SELECT Customer_Segment, COUNT(Customer_ID) AS Customer_Count
FROM RFM_SQL
GROUP BY Customer_Segment;


//WHAT IS THE AVERAGE NUMBER OF ORDER AND AVERAGE SALES PER CUSTOMER SEGMENT?

SELECT Customer_Segment, AVG(Count_of_Order_ID) AS Average_Orders, AVG(Average_of_Sales) AS Average_Sales
FROM [RFM_SQL]
GROUP BY Customer_Segment;


//WHO ARE THE TOP 5 CUSTOMERS WITH THE HIGHEST MONETARY VALUE?

SELECT Customer_ID, M AS Monetary_Score, Average_of_Sales
FROM [RFM_SQL]
ORDER BY Monetary_Score DESC, Average_of_Sales DESC


//HOW MANY CUSTOMERS HAVE NOT MADE A PURCHASE RECENTLY?

SELECT COUNT(Customer_ID) AS Inactive_Customers
FROM [RFM_SQL]
WHERE R = 0;


//WHAT IS THE DISTRIBUTION OF CUSTOMERS BASED ON RFM SCORE?

SELECT RFM, COUNT(Customer_ID) AS Customer_Count
FROM [RFM_SQL]
GROUP BY RFM
ORDER BY RFM;


//IDENTIFY CUSTOMERS WHO ARE "AT RISK" AND HAVE AN AVERAGE SALES ABOVE $200 THRESHOLD

SELECT Customer_ID, Customer_Segment, Average_of_Sales
FROM [RFM_SQL]
WHERE Customer_Segment = 'At Risk' AND Average_of_Sales > 200;


//WHAT IS THE TOTAL SALES AND AVERAGE SALES FOR EACH RECENCY SCORE? 

SELECT R AS Recency_Score, SUM(Average_of_Sales * Count_of_Order_ID) AS Total_Sales, AVG(Average_of_Sales) AS Average_Sale_Per_Order
FROM [RFM_SQL]
GROUP BY R
ORDER BY R;


//FIND THE NUMBER OF NEW CUSTOMERS IN EACH CUSTOMER SEGEMNT.

SELECT Customer_Segment, COUNT(Customer_ID) AS New_Customer_Count
FROM [RFM_SQL]
WHERE Count_of_Order_ID = 1
GROUP BY Customer_Segment;











