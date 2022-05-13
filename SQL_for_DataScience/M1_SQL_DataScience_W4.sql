/* 
Learn SQL Basics for Data Science Specialization
SQL for Data Science
Week 4
For all of the questions in this quiz, we are using the Chinook database. All of the interactive code blocks have been setup to retrieve data only from this database.

database: https://github.com/lerocha/chinook-database/tree/master/ChinookDatabase/DataSources

Database: sqlite3

*/
/*
String Functions:
Trim
Upper
Lower
*/
#Concatenate
SELECT FirstName || ' ' || LastName as CustomerFullName, Phone, Email
FROM Customer;

#Substring
SELECT FirstName, SUBSTRING(FirstName, 2,3) 
FROM Customer;

#Trim
SELECT LENGTH(TRIM('   HELLO WOLRD  ', '  ')),
 LENGTH('   HELLO WOLRD  ');

#Uppercase, Lowercase
SELECT UPPER(FirstName), LOWER(LastName)
FROM Employee;

# STRFTIME
SELECT BirthDate,
strftime('%Y', BirthDate) AS YEAR,
strftime('%m', BirthDate) AS MONTH,
strftime('%d', BirthDate) AS DAY
FROM Employee

# NOW
SELECT DATE('now')

SELECT strftime('%Y %m %d', 'now')

SELECT strftime('%H %M %S %s', 'now')

#Calcule the AGE of each Employee
SELECT BirthDate,
strftime('%Y', BirthDate) AS YEAR,
strftime('%m', BirthDate) AS MONTH,
strftime('%d', BirthDate) AS DAY,
strftime('%Y %m %d', 'now') - BirthDate as AGE
FROM Employee

# Search CASE Statement

SELECT EmployeeId, FirstName, LastName, City,
  CASE City 
  WHEN 'Calgary' THEN 'Calgary'
  ELSE 'Other'
  END Calgary_City 
FROM Employee
ORDER BY LastName, FirstName;

SELECT TrackId, "Name", Bytes,
  CASE 
    WHEN Bytes < 300000 THEN 'small'
    WHEN Bytes >= 300000 AND Bytes <= 5000000 THEN 'medium'
    WHEN Bytes >= 5000001 THEN 'large'
    ELSE 'Other'
    END bytes_category

FROM Track;

/*
Data Profiling:
Column Data type
Number of distinct values
Number of rows with NULL values
Descriptive statisctics: COUNT(), MIN(), MAX(), AVG(), SUM()
Dates and Times
String Values

Data Understanding <====> Business Undertanding
*/

#Module 4 Coding Questions
/* 
Q1
All of the questions in this quiz refer to the open source Chinook Database. Please familiarize yourself with the ER diagram in order to familiarize yourself with the table and column names in order to write accurate queries and get the appropriate answers.
What is the city and country result for CustomerID 16?
MOUNTAIN VIEW USA
*/
Pull a list of customer ids with the customer’s full name, and address, along with combining their city and country together. Be sure to make a space in between these two and make it UPPER CASE. (e.g. LOS ANGELES USA)
SELECT CustomerId, FirstName, LastName, Address, UPPER(City), UPPER(Country) 
FROM Customer
WHERE CustomerId = 16;

/*
Q2 
Create a new employee user id by combining the first 4 letters of the employee’s first name with the first 2 letters of the employee’s last name. Make the new field lower case and pull each individual step to show your work.
What is the final result for Robert King?
robeki
*/
SELECT LOWER(SUBSTR(FirstName, 0,5) || SUBSTR(LastName, 0,3))
FROM Employee
WHERE FirstName = 'Robert' and LastName = 'King';

/*
Q3
Show a list of employees who have worked for the company for 15 or more years using the current date function. Sort by lastname ascending.
What is the lastname of the last person on the list returned?
Peacock
*/
SELECT DATE('now') - HireDate, LastName FROM Employee
WHERE (DATE('now') - HireDate) >= 15
ORDER BY LastName ASC;

/*
Q4
Profiling the Customers table, answer the following question.
Are there any columns with null values? Indicate any below. Select all that apply.
Postal Code, Phone, Fax, Company
*/
SELECT * FROM Customer 
WHERE PostalCode IS NULL;

SELECT * FROM Customer 
WHERE Phone IS NULL;

SELECT * FROM Customer 
WHERE Company IS NULL;

SELECT * FROM Customer 
WHERE Fax IS NULL;

/*
Q5
Question 5
Find the cities with the most customers and rank in descending order.
Which of the following cities indicate having 2 customers?
Mountain View, London, São Paulo
*/
SELECT COUNT(CustomerID), City FROM Customer
GROUP BY City
ORDER BY COUNT(CustomerID) DESC;

/*
Q6
Create a new customer invoice id by combining a customer’s invoice id with their first and last name while ordering your query in the following order: firstname, lastname, and invoiceID.
Select all of the correct "AstridGruber" entries that are returned in your results below. Select all that apply.
AstridGruber273, AstridGruber296, AstridGruber370
*/
SELECT i.InvoiceID || c.FirstName || c.LastName
FROM Customer c INNER JOIN Invoice i ON c.CustomerId = i.CustomerId
WHERE c.FirstName = 'Astrid' and c.LastName = 'Gruber'
ORDER BY c.FirstName, c.LastName, i.InvoiceID;