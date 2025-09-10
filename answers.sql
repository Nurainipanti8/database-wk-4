-- Activate Table

USE salesdb;

 -- Write an SQL query to show the total payment amount for each payment date from **payments** table. 
 -- Display the **payment date** and the **total amount** paid on that date.  
 -- Sort the results by **payment date in descending order**.  
 -- Show only the **top 5 latest payment dates**.  

 SELECT paymentDate,
 amount FROM payments
 HAVING paymentDate > 5
 order by paymentDate desc;
 
 
 -- ### **Question 2**  
-- Write an SQL query to find the average credit limit of each customer from **customers** table.  
-- Display the **customer name**, **country**, and the **average credit limit**.  
-- Group the results by **customer name and country**. 

  SELECT * FROM customers; 
 
SELECT  customerName, country, AVG(creditLimit)AS avg_credit_imit
 FROM customers
 GROUP BY customerName, country;   

-- ### **Question 3**  
-- Write an SQL query to find the total price of products ordered from **orderdetails** table.  
-- Display the **product code**, **quantity ordered**, and the **total price** for each product.  
-- Group the results by **product code and quantity ordered**.
  
   SELECT * FROM orderdetails;
   
   SELECT   productCode, SUM(quantityOrdered)AS  total_quantity,
   SUM(quantityOrdered * priceEach)AS total_price_product
   FROM orderdetails
   GROUP BY productCode, quantityOrdered;     ;
   
  -- ### **Question 4** 

-- Write an SQL query to find the highest payment amount for each check number from **payments** table.  
-- Display the **check number** and the **highest amount** paid for that check number.  
-- Group the results by **check number**. 
SELECT checkNumber, amount
FROM payments
ORDER BY amount DESC
LIMIT 1;  

