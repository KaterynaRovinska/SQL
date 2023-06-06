SELECT *from `DATABASE_1.ODS_CLIENTS`

SELECT NAME, REGION
from `DATABASE_1.ODS_CLIENTS`

---exerc 1

/*
Show all the data in the tables and see what the tables contain

*/

select *from `DATABASE_1.ODS_CLIENTS`;

select *from `DATABASE_1.ODS_ADJUSTMENTS`;

select *from `DATABASE_1.ODS_TRANSACTIONS`;

select*from `DATABASE_1.ODS_FREIGHTS`;

select *from `DATABASE_1.ODS_COGS`;

select * from `DATABASE_1.ODS_PRODUCTS`;


/*
Show all the data in the tables and see what the tables contain

*/


select ID_Client, REGION
from `DATABASE_1.ODS_CLIENTS`

/*
Show all the data in the tables and see what the tables contain

*/

select distinct TRANSACTION from `DATABASE_1.ODS_PRODUCTS`


/*
3. Show the different agencies (unique records) you have in transactional table 
*/

select distinct ID_AGENCY
from `DATABASE_1.ODS_TRANSACTIONS`

/*
4. Check the different months and states (unique records) you have in ODS_FREIGHTS
*/

select distinct MONTH, STATE 
from `DATABASE_1.ODS_FREIGHTS`


/*
5. Show number of different countries and States (unique records) from ODS_CLIENTS
*/

select distinct COUNTRY, STATE
from `DATABASE_1.ODS_CLIENTS`

/*
6. Show the number of different doors from ODS_PRODUCTS and sort it on descending order
*/

SELECT distinct DOORS
from `DATABASE_1.ODS_PRODUCTS`
ORDER BY 1 DESC


/*
7. We want to check what are the different states (unique records) our clients are from and we want to see it in
alphabetical order (from A to Z)
*/

SELECT distinct STATE
from `DATABASE_1.ODS_CLIENTS`
ORDER BY STATE ASC

/*
8. Check the different months and states (unique records) you have in ODS_FREIGHTS and sort it by State (from A to Z).
In this way we can check if there is any state that has no freights in some months
*/

SELECT distinct MONTH, STATE
from `DATABASE_1.ODS_FREIGHTS`
ORDER BY STATE ASC


/*
9. Check what’s the first purchase date from ODS_TRANSACTIONS
*/
SELECT DISTINCT SALE_DATE
from `DATABASE_1.ODS_TRANSACTIONS`
ORDER BY 1 ASC


/*
10. Check what’s the most expensive unit price from ODS_TRANSACTIONS
*/

SELECT distinct UNIT_PRICE
from `DATABASE_1.ODS_TRANSACTIONS`
ORDER BY 1 DESC


/*
11. Check how many distinct units from ODS_FREIGHTS there are and sort it in descendent order
*/

SELECT distinct UNITS
from `DATABASE_1.ODS_FREIGHTS`
ORDER BY 1 DESC



/*
12. Get the top 100 different products with the most expensive prices (unique id_product, unit_price) from
ODS_TRANSACTIONS
*/

SELECT DISTINCT ID_PRODUCT, UNIT_PRICE
FROM `DATABASE_1.ODS_TRANSACTIONS`
ORDER BY 2 DESC
LIMIT 100


/*
13. Get the top 10 of the highest discounts (unique records) from ODS_TRANSACTIONS
*/

SELECT DISTINCT DISCOUNT
FROM `DATABASE_1.ODS_TRANSACTIONS`
ORDER BY 1 DESC
LIMIT 10


/*
14. Check what’s the top 20 of the shorter distances (unique distances) from ODS_FREIGHTS
*/

SELECT DISTINCT DISTANCE_KM
FROM `DATABASE_1.ODS_FREIGHTS`
ORDER BY 1 ASC
LIMIT 20


/*
15. Show the top 10 tickets with the largest purchases (SALE_NET) from ODS_TRANSACTIONS
*/

SELECT DISTINCT ID_TICKET, SALE_NET
FROM `DATABASE_1.ODS_TRANSACTIONS`
ORDER BY 2 DESC
LIMIT 10

/*
16. Get the top 5 cars with the highest number of doors from ODS_PRODUCTS
*/

SELECT DISTINCT DOORS, DESCRIPTION ,ID_PRODUCT
FROM `DATABASE_1.ODS_PRODUCTS`
ORDER BY 1 DESC
LIMIT 5


/*
We want to see id_client, Region, Country, State from ODS_CLIENTS of those clients that are from 'Morelos'. Morelos
is a State from México.
Sort by id_client in descendent order
*/

SELECT ID_CLIENT, REGION, COUNTRY,STATE
FROM `DATABASE_1.ODS_CLIENTS`
WHERE STATE = 'Morelos'
ORDER BY 1 DESC

/*
18. Show the unique product ID of products that have 2 doors from Products table
*/

SELECT DISTINCT ID_PRODUCT, DOORS
FROM `DATABASE_1.ODS_PRODUCTS`
WHERE DOORS = 2



/*
19. Get the TOP 10 id tickets of the highest purchases (sale_net) made on January 1st, 2009 from ODS_TRANSACTIONS
*/

SELECT ID_TICKET, SALE_NET, SALE_DATE
FROM `DATABASE_1.ODS_TRANSACTIONS`
WHERE SALE_DATE = '2009-01-01'
ORDER BY 2 DESC
LIMIT 10


/*
Show unique product ID of the products that DO NOT have 4 doors from ODS_PRODUCTS
*/

SELECT distinct ID_PRODUCT
FROM `DATABASE_1.ODS_PRODUCTS`
WHERE DOORS !=4

/*
Show the states (unique records) from ODS_FREIGHTS where the total cost is equal or greater than 100,000.
Sort the result by state in descendent order (Z to A)
*/

SELECT DISTINCT STATE
FROM `DATABASE_1.ODS_FREIGHTS`
WHERE TOTAL_COST >= 100000
ORDER BY STATE DESC


/*
Show records from ODS_TRANSACTIONS where net sale is between 500,000 and 1,000,000. 
*/

SELECT SALE_NET
FROM `DATABASE_1.ODS_TRANSACTIONS`
WHERE SALE_NET BETWEEN 500000 AND 1000000


/*
23. Obtain the records from ODS_TRANSACTIONS where id_agency is 414 and only for the products with category 'F' for 
id_client = 213422 and unit_price less than 160,000
*/


SELECT *
FROM `DATABASE_1.ODS_TRANSACTIONS`
WHERE ID_AGENCY = 414 AND ID_CATEGORY = 'F'
AND ID_CLIENT = 213422 AND UNIT_PRICE < 160000


/*
24. Show the records from ODS_TRANSACTIONS of purchases made on June 2009 sold by agency 222 of those clients 
that bought more tan 1 product per ticket
*/

SELECT *
FROM `DATABASE_1.ODS_TRANSACTIONS`
WHERE ID_AGENCY=222 AND SALE_DATE BETWEEN '2009-06-01' AND '2009-06-30' AND QTY_SKU >1


/*
25. Show the records from ODS_TRANSACTIONS for those products with ‘A’ category and only for the products 
A1,A2,A3. 
You can obtain the result in 2 ways, so do both
*/

SELECT *
FROM `DATABASE_1.ODS_TRANSACTIONS`
WHERE ID_CATEGORY = 'A' 
AND ID_PRODUCT IN ('A1', 'A2', 'A3')


SELECT STATE
FROM `DATABASE_1.ODS_CLIENTS`
WHERE STATE LIKE '_a%'


SELECT *
FROM `DATABASE_1.ODS_TRANSACTIONS`
WHERE CAST (SALE_DATE AS STRING) LIKE '%6'

/*
26. Get the tickets (all columns) that clients with id 19778, 19863, 28589, 50225, 51995, 18046, 33539, 
5744, 316057 bought from June 2009 to December 2009 and for those products different than A1, A2, A3, F4, B3 
and M2
*/



SELECT *
FROM `DATABASE_1.ODS_TRANSACTIONS`
WHERE ID_CLIENT IN (19778, 19863, 28589, 50225, 51995, 18046, 33539, 
5744, 316057)
AND SALE DATE BETWEEN '2009-06-01' AND '2009-12-30'
AND ID_PRODUCT NOT IN ('A1', 'A2', 'A3', 'F4', 'B3' 
'M2')

/*
27. Obtain the records from ODS_TRANSACTIONS where id_trans_type starts with 'RT', for all id_product that end 
with 2 and the categories 'L' and 'B
*/


SELECT *
FROM `DATABASE_1.ODS_TRANSACTIONS`
WHERE ID_TRANS_TYPE LIKE 'RT%' AND ID_PRODUCT LIKE '%2' AND ID_CATEGORY IN ('L', 'B')



/*
Get the name of the clients whose name or surname is “Reyes
*/

SELECT *
FROM `DATABASE_1.ODS_CLIENTS`
WHERE NAME LIKE '%REYES%'


/*
29. Show the distinct states which have the letter ‘o’ in the second position from ODS_FREIGHTS
*/

SELECT DISTINCT STATE
FROM `DATABASE_1.ODS_FREIGHTS`
WHERE STATE LIKE '_o%'


/*
30. Show the names which first surname are 'Morales' sorted alphabetically from A to Z
Note: name is in this format -> surname1, surname2, name
*/

SELECT NAME
FROM `DATABASE_1.ODS_CLIENTS`
WHERE NAME LIKE 'MORALES%'
ORDER BY NAME ASC


/*
31. Show the names which CONTAINS 'Morales' sorted from Z to A
*/
SELECT NAME
FROM `DATABASE_1.ODS_CLIENTS`
WHERE NAME LIKE '%MORALES%'
ORDER BY NAME DESC


/*
32. From ODS_TRANSACTIONS, show id_ticket and the power of 2 for sale_net column but only for purchases did in 
March and ordered by date 
*/

SELECT ID_TICKET, POWER (SALE_NET, 2) SALE_POWER
FROM `DATABASE_1.ODS_TRANSACTIONS`
WHERE SALE_DATE BETWEEN '2009-04-01' and '2009-04-30'
ORDER BY SALE_DATE ASC



SELECT ID_TICKET, SALE_DATE, POWER (SALE_NET, 2) SALE_POWER
FROM `DATABASE_1.ODS_TRANSACTIONS`
WHERE CAST(SALE_DATE AS STRING) LIKE '%-03-%'
ORDER BY SALE_DATE ASC


/*
33. From ODS_TRANSACTIONS calculate the total sale by mulitipliying the quantity of products by the unit price for 
those products which category is E, H, J and L
*/

SELECT QTY_SKU, UNIT_PRICE, QTY_SKU * UNIT_PRICE  AS TOTAL_SALE
FROM `DATABASE_1.ODS_TRANSACTIONS`
WHERE ID_CATEGORY IN ('E', 'H', 'J', 'L')



/*
34. From ODS_TRANSACTIONS calculate the distinct unit price of products by dividing the net sale column by the 
quantity for those products which code begins with B followed by any characteR
*/

SELECT DISTINCT ID_PRODUCT, SALE_NET / QTY_SKU AS DISTINCT_UNIT_PRICE
FROM `DATABASE_1.ODS_TRANSACTIONS`
WHERE ID_PRODUCT LIKE 'B%'
ORDER BY 1

/*
DATE
*/

SELECT DATE_ADD(CURRENT_DATE(),INTERVAL 1 MONTH)
FROM `DATABASE_1.ODS_TRANSACTIONS`


SELECT DATE_ADD(SALE_DATE,INTERVAL 1 MONTH)
FROM `DATABASE_1.ODS_TRANSACTIONS`

/*
35. From ODS_TRANSACTIONS, show id_ticket and square root of the sale_net column only for day 1 of all 
months
*/

SELECT ID_TICKET, SALE_DATE, Extract(DAY from SALE_DATE),sqrt(SALE_NET) as SALE_NET_SQRT
FROM `DATABASE_1.ODS_TRANSACTIONS`
where EXTRACT(DAY FROM SALE_DATE) = 1


/*
Get today's date
*/

SELECT CURRENT_DATE()


/*
37. Show in one column the distinct dates and in another column the same dates but 3 months later 
from ODS_TRANSACTIONS
*/


SELECT DISTINCT SALE_DATE, DATE_ADD(SALE_DATE, INTERVAL 3 MONTH) AS NEW_DATE
FROM `DATABASE_1.ODS_TRANSACTIONS`


/*
38. Show in one column the distinct dates and in another column the difference in months of that date with the 
current date from ODS_TRANSACTIONS
*/

SELECT DISTINCT SALE_DATE,  CURRENT_DATE() AS TODAY, DATE_DIFF(CURRENT_DATE(), SALE_DATE, MONTH) AS DIFFERENCE_MONTH
FROM `DATABASE_1.ODS_TRANSACTIONS`
ORDER BY SALE_DATE ASC



/*
39. Show the name of the clients in one column and on a different column calculate the length of the name from 
ODS_CLIENTES and check what’s the longest name
*/

SELECT NAME, LENGTH(NAME) AS LENGHT_NAME
FROM `DATABASE_1.ODS_CLIENTS`
ORDER BY 2 DESC


/*
40. Obtain the name of the clients in a column and on a different column replace from that field all the letters ‘A’ by an 
underscore '_’
*/

SELECT NAME, REPLACE(NAME, 'A', '_') AS REPLASED_NAME
FROM `DATABASE_1.ODS_CLIENTS`


/*
41. Obtain the State where the clients are from in one column and in a different column from position 2 get the first three 
characters of that field using substring function
*/

SELECT STATE, SUBSTRING(STATE, 2, 3) AS MODIFIED
FROM `DATABASE_1.ODS_CLIENTS`


/*
42. Obtain the name of the client in one column and in a different column the last two characters of that same 
field using the rigth function
*/

SELECT NAME, RIGHT(NAME, 2) AS MODIFIED
FROM `DATABASE_1.ODS_CLIENTS`


SELECT NAME, SUBSTRING(NAME,-2, 2) AS MODIFIED
FROM `DATABASE_1.ODS_CLIENTS`


/*
43. Convert the column name from ODS_CLIENTS to lower-case 
*/
SELECT NAME, LOWER(NAME) AS MODIFIED
FROM `DATABASE_1.ODS_CLIENTS`

/*
44. Concatenate name, state and region from ODS_CLIENTS in one column
*/

SELECT CONCAT(NAME, ' ', STATE, ' ', REGION) AS TOGETHER
FROM `DATABASE_1.ODS_CLIENTS`


/*
45. Modify the field sales from ODS_COGS: where sales column is less than 90.000 we want to change the sales by NULL
*/

UPDATE `DATABASE_1.ODS_COGS`
SET SALES = NULL
WHERE SALES < 90000

/*
46. Modify the field adjustment from DWH_ADJUSTMENTS: Multiply adjustment by 2 and change this field 
on DWH_ADJUSTMENTS (all records)
*/

UPDATE `DATABASE_1.ODS_ADJUSTMENTS`
SET ADJUSTMENT = ADJUSTMENT*2
WHERE TRUE


/*
47. Modify the field country from ODS_CLIENTS: where id_type is ‘TC03’, change the values in country by NULL
*/

UPDATE `DATABASE_1.ODS_CLIENTS`
SET COUNTRY = NULL
WHERE ID_TYPE = 'TC03'

/*
48. From ODS_COGS show the rows where sales is NULL
*/

SELECT SALES
FROM `DATABASE_1.ODS_COGS`
WHERE SALES IS NULL



/*
49. From ODS_CLIENTS get the different (unique, distinct) city codes where Country is NULL
*/

SELECT DISTINCT COUNTRY
FROM `DATABASE_1.ODS_COGS`
WHERE COUNTRY IS NULL

/*
50. From ODS_COGS replace NULL by 0 using IFNULL function on sales column.
In order to check if the function is working, show id_product, sales and the column where IFNULL function is applied to 
sales column
*/

SELECT ID_PRODUCT, SALES, IFNULL(SALES, 0) AS NULL_SALES
FROM `DATABASE_1.ODS_COGS`
WHERE SALES IS NULL


UPDATE `DATABASE_1.ODS_COGS`
SET SALES = IFNULL(SALES,100)
WHERE LOWER(ID_PRODUCT) LIKE 'a%'


/*
51. Modify the table ODS_CLIENTS using the UPDATE statement replacing NULL by ‘MEX’ on country column
*/

UPDATE `DATABASE_1.ODS_CLIENTS`
SET COUNTRY = 'MEX'
WHERE COUNTRY IS NULL

UPDATE `DATABASE_1.ODS_CLIENTS`
SET COUNTRY = IFNULL(COUNTRY,'MEX')
WHERE TRUE



/*
52. From DWH_ADJUSTMENTS, show CLIENT_SEGMENT and in a new column, using CASE function, replace 
the following information of Characteristics field:
When client segment is A we change the information of characteristics by ‘> 500’
When client segment is B we change the information of characteristics by ‘300-500’
When client segment is C we change the information of characteristics by ‘100-300’
When client segment is D we change the feature information by ‘<100’
*/


SELECT CLIENT_SEGMENT, CHARACTERISTICS,
CASE CLIENT_SEGMENT
WHEN CLIENT_SEGMENT = 'A' THEN '>500'
WHEN CLIENT_SEGMENT = 'B' THEN '300-500'
WHEN CLIENT_SEGMENT = 'C' THEN '100-300'
WHEN CLIENT_SEGMENT = 'D' THEN '<100'
END AS NEW_CHARACTERISTICS
FROM `DATABASE_1.ODS_ADJUSTMENTS`


/*
53. Update the information from ODS_ADJUSTMENTS on characteristics column as explained on exercise 52
*/

UPDATE `DATABASE_1.ODS_ADJUSTMENTS`
SET CHARACTERISTICS = 
CASE WHEN CLIENT_SEGMENT = 'A' THEN '>500'
WHEN CLIENT_SEGMENT = 'B' THEN '300-500'
WHEN CLIENT_SEGMENT = 'C' THEN '100-300'
WHEN CLIENT_SEGMENT = 'D' THEN '<100'
END
WHERE TRUE


/*
54. From ODS_COGS, show Month and in a new column show the month with characters. 
For instance, if month = 1 then the new column must contain ‘January
*/

SELECT  DISTINCT MONTH,
CASE WHEN  MONTH = 1 THEN 'JANUARY'
WHEN MONTH = 2 THEN 'FEBRUART'
WHEN MONTH = 3 THEN 'MARCH'
WHEN MONTH = 4 THEN 'APRIL'
WHEN MONTH =5 THEN 'MAY'
ELSE 'OTHERS'
END AS MONTH_WRITTING
FROM `DATABASE_1.ODS_COGS`
ORDER BY 1 ASC

/*
54 a. Create a temporary table. The name of this new table will be your name:
This temporary table will contain all the columns from ODS_CLIENTS where the column NAME contains the
string ‘GARCIA ’
*/

CREATE TEMPORARY TABLE KATERYNA
AS
SELECT *
FROM `DATABASE_1.ODS_CLIENTS`
WHERE UPPER (NAME) LIKE '%GARCIA%';

SELECT * FROM KATERYNA /*NESSESARY TO CALL*/


/*
54 b. Create a table. The name of this new table will be your name_1:
This table will contain columns NAME and REGION from ods_clients. Insert the data from ods_clients in the 
new table, but only for those rows where state is Sonora and country is MEX
*/


CREATE TABLE DATABASE_1.KATERYNA_1
(NAME STRING,REGION STRING);
INSERT INTO DATABASE_1.KATERYNA_1
SELECT NAME, REGION 
FROM `DATABASE_1.ODS_CLIENTS`
WHERE UPPER (STATE) LIKE 'SONORA' AND UPPER (COUNTRY) LIKE 'MEX';


/*
55. From ODS_CLIENTS, count the number of distinct clients the company has
*/

SELECT COUNT (DISTINCT customerNumber)
FROM `MEANS_TRANSPORTATION.CUSTOMERS`

/*
56. From ODS_TRANSACTIONS we want to know how much is the amount of sales of all tickets from September 2009 
to December 2009.
*/

SELECT SUM (QTY_SKU * SALE_NET)
FROM `DATABASE_1.ODS_TRANSACTIONS`
WHERE SALE_DATE BETWEEN '2009-09-01' AND '2009-12-31'

/*
57. From ODS_TRANSACTIONS we want to know the average of sales of all tickets for the product H5
*/


SELECT AVG(SALE_NET)
FROM `DATABASE_1.ODS_TRANSACTIONS`
WHERE UPPER (ID_PRODUCT) = 'H5'


/*
58. Count the number of rows from ODS_CLIENTS.
*/

SELECT COUNT(*)
FROM `DATABASE_1.ODS_CLIENTS`


/*
59. Check what’s the max number of doors from ODS_PRODUCTS.
*/

SELECT MAX(DOORS)
FROM `DATABASE_1.ODS_PRODUCTS`


/*
60. Count the number of different products from ODS_PRODUCTS.
*/
SELECT COUNT (DISTINCT ID_PRODUCT)
FROM `DATABASE_1.ODS_PRODUCTS`



/*
61. Get the first date contained on ODS_TRANSACTIONS.
*/

SELECT MIN (SALE_DATE)
FROM `DATABASE_1.ODS_TRANSACTIONS`


/*
62. - Count the number of rows from ODS_COGS. 
- Count the number of values different than NULL on column sales from ODS_COGS. 
- Where is the difference?
*/

SELECT COUNT(*)
FROM `DATABASE_1.ODS_COGS`
WHERE SALES IS NOT NULL

SELECT COUNT (SALES)
FROM `DATABASE_1.ODS_COGS`


## MEANS TRANSPORTATION DB ##

/*
63. From PRODUCTS, count the number products by product line (Motorcycles, Classic cars, Trucks&buses, …)
*/


SELECT productLine,
COUNT(DISTINCT productName)
FROM `MEANS_TRANSPORTATION.PRODUCTS`
group by productLine

/*
64. From PAYMENTS, get the top 10 best clients by checking how much each client has payed. Use an alias to name the 
second column as Total_amount
*/

#NO NEED TO USE DISTINCT WITH AGGREGATE

SELECT customerNumber,
SUM(AMOUNT) as Total_amount
FROM `MEANS_TRANSPORTATION.PAYMENTS`
GROUP BY customerNumber
ORDER BY 1 DESC
LIMIT 10


/*
65. From CUSTOMERS, how many customers are served by each employee? Sort by the number of clients so you can 
check who is the best employee and use an alias to name the second column as Total_customers
*/

SELECT salesRepEmployeeNumber,
count(customerNumber) as Total_customer
from `MEANS_TRANSPORTATION.CUSTOMERS`
GROUP BY salesRepEmployeeNumber
order by Total_customer desc

/*
66. From ORDER_DETAILS, get the top 10 best selling products. Use an alias to name the calculation as count_product
*/


SELECT productCode,
SUM(quantityOrdered) AS COUNT_PRODUCT
from `MEANS_TRANSPORTATION.ORDER_DETAILS`
GROUP BY productCode
ORDER BY COUNT_PRODUCT DESC
LIMIT 10 


/*
67. From ORDER_DETAILS, get the number of products by ticket using max() on column OrderLineNumber and check 
what’s the ticket with highest number of products
*/

SELECT orderNumber,
MAX(orderLineNumber) AS MAX_VAL
FROM `MEANS_TRANSPORTATION.ORDER_DETAILS`
GROUP BY orderNumber
ORDER BY MAX_VAL DESC


/*
68. From OFFICES, check what’s the country with the highest number of offices
*/

SELECT COUNTRY,
COUNT(officeCode)
FROM `MEANS_TRANSPORTATION.OFFICES`
GROUP BY COUNTRY
ORDER BY 2 DESC

/*
69. From CUSTOMERS, check the number of customers per country for those customers who are not assigned an 
employee, so we can see if we can assign a new employee
*/

SELECT COUNTRY, salesRepEmployeeNumber,
COUNT(customerNumber) AS NUM_CUST
FROM `MEANS_TRANSPORTATION.CUSTOMERS`
WHERE salesRepEmployeeNumber IS NULL
GROUP BY COUNTRY
ORDER BY NUM_CUST DESC

/*
70. From EMPLOYEES, check the number of employees of each office that reports to the Sales Manager (NA)
*/

select officeCode,
count(employeeNumber) as reports_to_NaN
from `MEANS_TRANSPORTATION.EMPLOYEES`
where reportsTo = '1143'
GROUP BY officeCode


/*
71. From ORDERS, get the number of distinct orders by month (order date) for those orders that has been shipped 
2 days or less after the order date in 2003 (order date) and sort the result by month
*/ -------------------??????????????????

SELECT extract(month from orderDate) as fecha,
count(orderNumber) as counted
from `MEANS_TRANSPORTATION.ORDERS`
where date_diff(cast(shippedDate as timestamp), orderDate, day)<=2
and status = 'Shipped'
and extract (year from orderDate) = 2003
group by fecha
order by fecha


/*
72. From PRODUCTS, show the total amount of products in stock by vendor and product line only for vendors Classic 
Metal Creations, Autoart Studio Design, Motor City Art Classics and Red Start Diecast. Sort by vendor and product line
*/

select productVendor, productLine,
sum(quantityInStock) as total
from `MEANS_TRANSPORTATION.PRODUCTS`
where productVendor in ('Classic Metal Creations', 'Autoart Studio Design', 'Motor City Art Classics', 'Red Start Diecast')
group by 1,2
order by 1,2


/*
73. From PRODUCTS, get those vendors who offer more than 3 products belonging to ‘classic cars’ product line
*/


select productVendor,
count (distinct productCode) as quantityInStock
from `MEANS_TRANSPORTATION.PRODUCTS`
where productLine = 'Classic Cars'
group by productVendor
having count(distinct productCode) >3


/*
74. From ORDER_DETAILS, get the average of purchase by ticket for those tickets which average is greater than 4000$
*/

select orderNumber,
avg(priceEach*quantityOrdered) as AVG_TKT
from `MEANS_TRANSPORTATION.ORDER_DETAILS`
group by orderNumber
having AVG_TKT >4000


/*
75. From PAYMENTS, show the customers that have spent more than 50000 per month per year
*/

select customerNumber, extract(month from paymentDate) as Month, extract(year from paymentDate)as year,
sum(amount) as total_amount
from `MEANS_TRANSPORTATION.PAYMENTS`
group by 1,2,3
having total_amount >50000 


/*
76. From PRODUCTS, get the product lines with an average of prices (buyPrice) greater than 5000$ 
*/

select productLine,
avg(buyPrice)
from `MEANS_TRANSPORTATION.PRODUCTS`
group by productLine
having avg(buyPrice)>5000

/*
77. From PRODUCTS, get the most profitable vendors selecting only those vendors that generate profits greater 
than 40000 assuming that the products are sold at the price suggested by the manufacturer
Note: Column MSRP means manufacturer's suggested retail price -> MSRP - buyPrice
*/

select productVendor,
sum(MSRP-buyPrice) as profit
from `MEANS_TRANSPORTATION.PRODUCTS`
group by 1
having profit >40000
order by 2 desc



/*
78. We want to know by CustomerNumber what is the job title of their sales rep (unique records)
*/

select distinct a. customerNumber, b. jobTitle
from `MEANS_TRANSPORTATION.CUSTOMERS` a inner join `MEANS_TRANSPORTATION.EMPLOYEES` b
on a.salesRepEmployeeNumber = b.employeeNumber


/*
79. We want to know how many orders did each customer on December 2003
*/

select distinct a. customerNumber, count(b. orderNumber) as amount_of_orders
from `MEANS_TRANSPORTATION.CUSTOMERS` a inner join `MEANS_TRANSPORTATION.ORDERS` b
on a.customerNumber = b.customerNumber
where extract (month from orderDate) = 12 and extract(year from orderDate)=2003
Group by 1
order by 1 desc


/*
80. Check by customers city, how many payments they've done and the total amount of those tickets, only for those 
clients that are from a city that starts by 'B‘
What’s the city where the customers did more payments? And the city where they spent the highest amount?
*/

select a. city,  count(b. checkNumber) as checks, sum(b. amount) as total
from `MEANS_TRANSPORTATION.CUSTOMERS` a inner join `MEANS_TRANSPORTATION.PAYMENTS` b
on a.customerNumber = b.customerNumber
where a.city like 'B%'
Group by 1
order by checks desc, total desc



/*
81. We want to contact our employees by email and send a communication to their offices by post mail,
so we want to show by :
employee, their names (first and last name), email and their offices addresses (address line 1 and 
2) only for employees in the USA
*/

select a. firstName, a.lastName,a.email,  b.addressLine1, b. officeCode
from `MEANS_TRANSPORTATION.EMPLOYEES` a inner join `MEANS_TRANSPORTATION.OFFICES` b
on a.officeCode = b.officeCode
where b.country = 'USA'


/*
82. Check by product line, the text description about the product line and show the number of products that 
belong to that product line. Show only those product lines that have more than 10 products associated with that
product line 
*/

select distinct a. productLine, a. textDescription, count(b. productCode) as qnt_prod
from `MEANS_TRANSPORTATION.PRODUCT_LINES` a inner join `MEANS_TRANSPORTATION.PRODUCTS` b
on a.productLine = b.productLine
group by 1,2
having qnt_prod >10
order by 3 desc

/*
83. We want to know by customerNumber the net sale from orders with number of units between 10 and 100 units
*/

select a. customerNumber, sum(c.quantityOrdered*c.priceEach) as sale_net
from `MEANS_TRANSPORTATION.CUSTOMERS` a inner join `MEANS_TRANSPORTATION.ORDERS` b
---on a.customerNumber = b.customerNumber
using (customerNumber)
inner join `MEANS_TRANSPORTATION.ORDER_DETAILS`c
using (orderNumber)
where quantityOrdered >=10 and quantityOrdered<=100
group by a.customerNumber