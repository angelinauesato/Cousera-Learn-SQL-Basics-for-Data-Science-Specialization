/* 
Learn SQL Basics for Data Science Specialization
SQL for Data Science
Week 2
For all of the questions in this quiz, we are using the Chinook database. All of the interactive code blocks have been setup to retrieve data only from this database.
database: https://github.com/lerocha/chinook-database/tree/master/ChinookDatabase/DataSources
ER: https://ucde-rey.s3.amazonaws.com/DSV1015/ChinookDatabaseSchema.png

Coding Questions - 9 questions
*/

-- Q1: Find all the tracks that have a length of 5,000,000 milliseconds or more. How many tracks are returned?
SELECT COUNT(TrackId) 
FROM TRACKS 
WHERE Milliseconds >=5000000;

-- A1: 2

-- Q2: Find all the invoices whose total is between $5 and $15 dollars. While the query in this example is limited to 10 records, running the query correctly will indicate how many total records there are - enter that number below.
SELECT COUNT(*) 
FROM Invoices
WHERE Total BETWEEN 5 and 15;

-- A2: 168

-- Q3: Find all the customers from the following States: RJ, DF, AB, BC, CA, WA, NY. What company does Jack Smith work for?
SELECT Company 
FROM Customers
WHERE State IN ('RJ', 'DF', 'AB', 'BC', 'CA', 'WA', 'NY') and FirstName = 'Jack' 
and LastName = 'Smith'; 

-- A3: Microsoft Corp

-- Q4: Find all the invoices for customer 56 and 58 where the total was between $1.00 and $5.00. What was the invoice date for invoice ID 315?
 
SELECT *
FROM Invoices 
WHERE CustomerId IN(56 , 58)
and Total BETWEEN 1.00 and 5.00
and InvoiceId = 315;

-- A4: 10-27-2012

-- Q5: Find all the tracks whose name starts with 'All'. While only 10 records are shown, the query will indicate how many total records there are for this query - enter that number below.

SELECT COUNT(*)
FROM Tracks
WHERE Name Like 'All%';

-- A5: 15

-- Q6: Find all the customer emails that start with "J" and are from gmail.com. Enter the one email address returned (you will likely need to scroll to the right) below.
SELECT Email 
FROM Customers 
WHERE Email Like 'j%gmail.com';

-- A6: jubarnett@gmail.com

-- Q7: Find all the invoices from the billing city Brasília, Edmonton, and Vancouver and sort in descending order by invoice ID.
SELECT *
FROM Invoices
WHERE BillingCity IN('Brasília', 'Edmonton', 'Vancouver')
ORDER BY InvoiceID DESC;


-- What is the total invoice amount of the first record returned? Enter the number below without a $ sign. Remember to sort in descending order to get the correct answer.

-- A7: 13.86

-- Q8: Show the number of orders placed by each customer (hint: this is found in the invoices table) and sort the result by the number of orders in descending order.

SELECT COUNT(InvoiceId), CustomerId
FROM Invoices
GROUP BY CustomerId
ORDER BY COUNT(InvoiceId) DESC;

-- What is the number of items placed for the 8th person on this list? Enter that number below.
SELECT COUNT(*)
FROM Invoices
WHERE CustomerId = 59;

-- A8: 7

/* Q9: Find the albums with 12 or more tracks.

While the number of records returned is limited to 10, the query, if run correctly, will indicate how many total records there are. Enter that number below.
*/

SELECT Count(TrackId) Tracks, AlbumId
FROM Tracks
GROUP BY AlbumId
Having Tracks >=12;

-- A9: 158
